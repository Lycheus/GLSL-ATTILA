/**************************************************************************
 *
 * Copyright (c) 2002 - 2011 by Computer Architecture Department,
 * Universitat Politecnica de Catalunya.
 * All rights reserved.
 *
 * The contents of this file may not be disclosed to third parties,
 * copied or duplicated in any form, in whole or in part, without the
 * prior permission of the authors, Computer Architecture Department
 * and Universitat Politecnica de Catalunya.
 *
 * ImageSaver implementation file.
 *
 */


/**
 *
 *  @file ImageSaver.cpp
 *
 *  This file contains the implementation of the ImageSaver class.
 *
 */

#include "ImageSaver.h"

#ifdef WIN32
    #include <windows.h>
    #include <gdiplus.h>
#else
    #include <png.h>
#endif

#include <cstdlib>
//#define KENNY_BMP //enable this to save BMP file format

namespace gpu3d
{

ImageSaver::ImageSaver()
{
#ifdef WIN32
    static Gdiplus::GdiplusStartupInput gdiplusStartupInput;

    Gdiplus::GdiplusStartup(&gdiplusToken, &gdiplusStartupInput, NULL);

    CLSID clsid;
    
    u32bit num = 0;             
    u32bit size = 0;
    Gdiplus::ImageCodecInfo* pImageCodecInfo = NULL;

    // Get the number of image encoders and the size of the image encoder array in bytes.
    Gdiplus::GetImageEncodersSize(&num, &size);
    if (size == 0)
        panic("ImageSaver", "ImageSaver", "Error obtaining PNG encoder.");

    pImageCodecInfo = (Gdiplus::ImageCodecInfo *) new u8bit[size];
    if (pImageCodecInfo == NULL)
        panic("ImageSaver", "ImageSaver", "Error obtaining PNG encoder.");

    Gdiplus::GetImageEncoders(num, size, pImageCodecInfo);

    bool found = false;
    for(u32bit c = 0; c < num && !found; ++c)
    {
        if (wcscmp(pImageCodecInfo[c].MimeType, L"image/png") == 0)
        {
            clsid = pImageCodecInfo[c].Clsid;
            found = true;
        }    
    }
    
    delete [] pImageCodecInfo;

    encoderClsid = new u8bit[sizeof(CLSID)];
    memcpy(encoderClsid, &clsid, sizeof(CLSID));
    
    if (!found)
        panic("ImageSaver", "ImageSaver", "Error obtaining PNG encoder.");
#endif
}



ImageSaver::~ImageSaver()
{
#ifdef WIN32
    Gdiplus::GdiplusShutdown(gdiplusToken);
    delete[] encoderClsid;
#endif
}

ImageSaver &ImageSaver::getInstance()
{
    static ImageSaver *imageSaver = NULL;
    
    if (imageSaver == NULL)
        imageSaver = new ImageSaver;
    
    return *imageSaver;
}

void ImageSaver::savePNG(char *filename, u32bit xRes, u32bit yRes, u8bit *data)
{
#ifdef KENNY_BMP
  //kenny add to save BMP Bitmap
  FILE *f;
  unsigned char *img = NULL;
  int w = xRes;
  int h = yRes;
  int filesize = 54 + 3*w*h;  //w is your image width, h is image height, both int
  if( img )
    free( img );
  img = (unsigned char *)malloc(3*w*h);
  memset(img,0,sizeof(img));
  //memcpy(img, data, sizeof(data));

  for(int i=0; i<w; i++)
    {
      for(int j=0; j<h; j++)
	{
	  int x=i; 
	  int y=(h-1)-j;
	  int r = data[(y * xRes + x) * 4 + 2];
	  int g = data[(y * xRes + x) * 4 + 1];
	  int b = data[(y * xRes + x) * 4 + 0];
	  img[(x+y*w)*3+2] = (unsigned char)(r);
	  img[(x+y*w)*3+1] = (unsigned char)(g);
	  img[(x+y*w)*3+0] = (unsigned char)(b);
	}
    }
  
  unsigned char bmpfileheader[14] = {'B','M', 0,0,0,0, 0,0, 0,0, 54,0,0,0};
  unsigned char bmpinfoheader[40] = {40,0,0,0, 0,0,0,0, 0,0,0,0, 1,0, 24,0};
  unsigned char bmppad[3] = {0,0,0};

  bmpfileheader[ 2] = (unsigned char)(filesize    );
  bmpfileheader[ 3] = (unsigned char)(filesize>> 8);
  bmpfileheader[ 4] = (unsigned char)(filesize>>16);
  bmpfileheader[ 5] = (unsigned char)(filesize>>24);

  bmpinfoheader[ 4] = (unsigned char)(       w    );
  bmpinfoheader[ 5] = (unsigned char)(       w>> 8);
  bmpinfoheader[ 6] = (unsigned char)(       w>>16);
  bmpinfoheader[ 7] = (unsigned char)(       w>>24);
  bmpinfoheader[ 8] = (unsigned char)(       h    );
  bmpinfoheader[ 9] = (unsigned char)(       h>> 8);
  bmpinfoheader[10] = (unsigned char)(       h>>16);
  bmpinfoheader[11] = (unsigned char)(       h>>24);
  
  //  Add file extension.
  char filenameBMP[256];
  sprintf(filenameBMP, "%s.bmp", filename);
  f = fopen(filenameBMP,"wb");
  fwrite(bmpfileheader,1,14,f);
  fwrite(bmpinfoheader,1,40,f);
  for(int i=0; i<h; i++)
    {
      fwrite(img+(w*(h-i-1)*3),3,w,f);
      fwrite(bmppad,1,(4-(w*3)%4)%4,f);
    }
  fclose(f);
#endif

#ifdef WIN32

    WCHAR filenameW[256];

    swprintf(filenameW, 255, L"%S.png", filename);

    CLSID clsid;
    memcpy(&clsid, encoderClsid, sizeof(CLSID));
    
    Gdiplus::Status status;
    
    Gdiplus::Bitmap *frameBitmap = new Gdiplus::Bitmap(xRes, yRes, xRes * 4, PixelFormat32bppARGB, (BYTE *) data);
    status = frameBitmap->Save(filenameW, &clsid, NULL);
    
    if (status != Gdiplus::Ok)
        panic("ImageSaver", "savePNG", "Error saving image to PNG file.");

    delete frameBitmap;

#else

    FILE *fout;
    png_structp png_ptr;
    png_infop info_ptr;
    png_byte **row_pointers;


    png_ptr = png_create_write_struct (PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
    info_ptr = png_create_info_struct(png_ptr);

    //  Add file extension.
    char filenameAux[256];
    sprintf(filenameAux, "%s.png", filename);
    
    //  Open/Create the file for the current frame.
    fout = fopen(filenameAux, "wb");

    //  Check if the file was correctly created.
    GPU_ASSERT(
        if (fout == NULL)
            panic("bGPU-emu", "dumpFrame", "Error creating frame color output file.");
    )
        
    png_init_io(png_ptr, fout);
    png_set_compression_level(png_ptr, 9);
    
    png_set_IHDR(png_ptr, info_ptr, xRes, yRes,
		 8, PNG_COLOR_TYPE_RGB_ALPHA, PNG_INTERLACE_NONE,
		 PNG_COMPRESSION_TYPE_DEFAULT, PNG_FILTER_TYPE_DEFAULT);

    png_write_info(png_ptr, info_ptr);
        
    png_set_bgr(png_ptr);
    
    row_pointers = (png_byte **)malloc(yRes * sizeof(png_byte*));

    for (int i = 0; i < yRes; i++)
	    row_pointers[i] = data + (xRes * 4) * i;

    png_write_image(png_ptr, row_pointers);
    png_write_end(png_ptr, info_ptr);
    png_destroy_write_struct(&png_ptr, &info_ptr);

    free(row_pointers);

    fclose(fout);

#endif    
}

}   // namespace gpu3d


