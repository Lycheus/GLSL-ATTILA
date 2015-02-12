/*****************************
$Author: Kenny Dow
$Revision: 1.05
$Last update: 2013-08-26

$Description:
A converter for NSYSU Assembly, mapping instruction to ATTILA ISA.
1. Shader Compiler Table
2. Mask convertion
3. Uniform Mapping
4. I/O codes
5. instruction convertion
6. branch

TODO:
1. Change the command detection 'if statements' 
   into 'switch case' shall improve the performance.
*****************************/

#include <iostream>
#include <iomanip>
#include <fstream>
#include <sstream>
#include <cstdlib>
#include <string.h>
#include <stdio.h>

#define MAX_CODE_LINE 2048 //also remember to modify attila assembler.cpp for larger code size
#define MAX_UNIFORM_ENTRY 128 //adjust here for more uniform entries

using namespace std;

struct SCT
{
  char name[256];
  int nsysu_reg;
  int attila_reg;
  int index;
};

struct uniformEntry
{
  char name[256];
  int constantReg;
};

struct SCT Table[256];
struct SCT ShaderCompilerTable[256];
int SCTIndex = 0;

char* maskConverter(char* digitMask)
{
  static char charMask[6];
  
  for(int i = 0; i <= 5; i++) charMask[i] = 0;

  if(digitMask[0] != '0' && digitMask[0] != '1')
    {
      cout << "ERROR: input mask isn't start with a 0 or 1\n";
      return NULL;
    }
  /*
  digitMask[0]&1?charMask[0]='x':charMask[0]='0';
  digitMask[1]&1?charMask[1]='y':charMask[1]='0';
  digitMask[2]&1?charMask[2]='z':charMask[2]='0';
  digitMask[3]&1?charMask[3]='w':charMask[3]='0';
  */
  charMask[0] = '.';
  int i = 1;
  if(digitMask[0] == '1')
    {
      charMask[i] = 'x';
      i++;
    }

  if(digitMask[1] == '1')
    {
      charMask[i] = 'y';
      i++;
    }

  if(digitMask[2] == '1')
    {
      charMask[i] = 'z';
      i++;
    }

  if(digitMask[3] == '1')
    {
      charMask[i] = 'w';
      i++;
    }
  charMask[i] = '\0';

  // This is a detection if R#.xywz occur then translate into R# for ATTILA
  if(i == 5)
    charMask[0] = '\0';
  
  /*//this is the case that R15.0000 occur
  if(i == 1)
    charMask[0] = '\0';
  */
  
  return charMask;
}

int createSCT(char* inputFile)
{
  ifstream sctFile;
  ifstream attila_reg_table;

  char fileString[256];
  char fileString2[256];
  char commandString[256];

  char* token;

  int tableIndex = 0;
  int matrixIndex = 0;
  int dstReg, srcReg = 0;

  //sprintf(commandString, "./uniform_register.sh %s", inputFile);
  sprintf(commandString, "./uniform_binding.sh %s", inputFile);
  system(commandString);
  //cout << endl << commandString << endl;
  //sctFile.open("ld_uni_table");

  attila_reg_table.open("attila_reg_table");
  while(attila_reg_table.getline(fileString, 256))
    {
      //Empty line detection to avoid token crashing
      if(fileString[0] == '\0')
	  continue;

      strcpy(Table[tableIndex].name, strtok(fileString, " "));
      Table[tableIndex].attila_reg = atoi(strtok(NULL, " "));      
      
      tableIndex++;
    }
  attila_reg_table.close();

  cout << "===============attila_reg_Table=================\n";
  cout << setw(20) << "NAME" << setw(15) << "ATTILA_REG" << endl;
  for(int i=0; i<tableIndex; i++)
    cout << setw(20) << Table[i].name << setw(15) << Table[i].attila_reg << endl;
  cout << "================================================\n";
  
  sctFile.open("uniform_binding_table");
  while(sctFile.getline(fileString, 256))
    {
      
      if(fileString[0] == '$')
	{
	  //Empty line detection to avoid token crashing
	  if(fileString[0] == '\0')
	      continue;
	  
	  strtok(fileString, " ");
	  token = strtok(NULL, " ");
	  //cout << token << endl;
	  ShaderCompilerTable[SCTIndex].nsysu_reg = atoi(token);
	  strcpy(ShaderCompilerTable[SCTIndex].name, strtok(NULL, " "));
	  matrixIndex = atoi(strtok(NULL, " "));
	  ShaderCompilerTable[SCTIndex].index = matrixIndex;

	  for(int i = 0; i < tableIndex; i++)
	    {
	      if(!strcmp(Table[i].name, ShaderCompilerTable[SCTIndex].name))
		ShaderCompilerTable[SCTIndex].attila_reg = Table[i].attila_reg + matrixIndex;
	    }
	  	 
	  SCTIndex++;
	}
      else
	{
	  cout << "ERROR: parsing unknown entry in uniform_binding_table\n";
	  return 1;
	}

      /*
      cout << "==========Table============\n";
      for(int i=0; i<tableIndex; i++)
	cout << Table[i].name << " " << Table[i].reg << endl;
      cout << "===========================\n\n";
      */
      //cin >> dstReg;

      //old ld_uni_table code
      /*    
      if(fileString[0] == 'R')
	{
	  //cout << "FOUND an R\n";
	  token = strtok(fileString, " R,\t");
	  Table[tableIndex].nsysu_reg = atoi(token);
	  //cout << Table[tableIndex].reg;
	  strcpy(Table[tableIndex].name, strtok(NULL, " ,\t"));
	  //cout << Table[tableIndex].name << endl;
	  tableIndex++;
	}
      else if(fileString[0] >= '0' && fileString[0] <= '9')
	{
	  //cout << "LDV:\n";
	  dstReg = atoi(strtok(fileString, " R\t"));
	  srcReg = atoi(strtok(NULL, " R\t"));
	  //cout << "dstReg: " << dstReg << "\nsrcReg: " << srcReg << endl << endl;
	  for(int i=tableIndex-1; i>=-1; i--)
	    {
	      if(srcReg == Table[i].nsysu_reg)
		{
		  ShaderCompilerTable[SCTIndex].nsysu_reg = dstReg;
		  strcpy(ShaderCompilerTable[SCTIndex].name, Table[i].name);
		  SCTIndex++;
		  break;
		}
	      if(i == -1)
		{
		  cout << "Fatal error: Cannot match register to name\n";
		  return 1;
		}
	    }
	}
      */
    }

  /*
  //map the nsysu uniform name to attila register by lookup "attila_reg_table" file
  for(int i = 0; i<SCTIndex; i++)
    {
      //cout << strtok(ShaderCompilerTable[i].name, ".") << endl;
      char* T_reg_name = (char*)malloc(sizeof(ShaderCompilerTable[i].name));
      strcpy(T_reg_name, ShaderCompilerTable[i].name);
      char* reg_name = strtok(T_reg_name, ".");

      strtok(NULL, ".");
      int reg_index  = atoi(strtok(NULL, "."));
      //cout << "reg_name[index]: " <<reg_name << "[" << reg_index << "]" << endl;
      
      attila_reg_table.open("attila_reg_table");
      while(attila_reg_table.getline(fileString2, 256))
	{
	  //cout << "fileString2: " << fileString2 << endl;
	  char* T_attila_reg_name = (char*)malloc(sizeof(fileString2));
	  strcpy(T_attila_reg_name, fileString2);
	  char* attila_reg_name = strtok(T_attila_reg_name, " ");
	  //cout << "attila_reg_name: " << attila_reg_name << " " << reg_name << endl;
	  if(!strcmp(reg_name, attila_reg_name))
	    {
	      //cout << "comparing: " << reg_name << " " << attila_reg_name << " ";
	      //cout << "MATCH!\n";
	      strcpy(T_attila_reg_name, fileString2);
	      strtok(T_attila_reg_name, " ");
	      for (int j = 0; j < reg_index; j++)
		strtok(NULL, " ");
	      ShaderCompilerTable[i].attila_reg = atoi(strtok(NULL, " "));
	      attila_reg_table.close();
	      break;
	    }
	}      
    }
  */

  cout << "=============ShaderCompilerTable==================\n";
  cout << setw(20) << "NAME" << setw(15) << "NSYSU_REG" << setw(15) << "ATTILA_REG" << endl;
  for(int i=0; i<SCTIndex; i++)
    cout << setw(20) << ShaderCompilerTable[i].name << "[" << ShaderCompilerTable[i].index << "]" << setw(15) << ShaderCompilerTable[i].nsysu_reg << setw(15) << ShaderCompilerTable[i].attila_reg << endl;
  cout << "==================================================\n";
}

int setupUniformLoading(char* inputFile, std::ofstream &outputFile)
{
  FILE* uniform2constantReg;
  FILE* uniform2index;
  int records;
  char uniform_name[256];
  int size;
  int index;
  int foundUniformNum;
  struct uniformEntry uniformTable[MAX_UNIFORM_ENTRY];

  //system("./uniform_mapping.sh");
  if(!strncmp(inputFile, "vertex.s", 8))
    {
      uniform2constantReg = fopen("uniform2constantReg.vert", "r");
      records = 0;
      while(fscanf(uniform2constantReg, "%s %d", uniformTable[records].name, &uniformTable[records].constantReg) != EOF)
	{
	  //fscanf(uniform2constantReg, "%s %d", uniformTable[records].name, &uniformTable[records].constantReg);
	  records++;
	}
      fclose(uniform2constantReg);

      for(int i = 0; i < records; i++)
	cout << "Name: " << setw(17) << uniformTable[i].name << setw(14) << "ConstReg: " << uniformTable[i].constantReg << endl;

      uniform2index = fopen("uniform2index.vert", "r");
      while(fscanf(uniform2index, "%s %d %d", uniform_name, &index, &size) != EOF)
	{
	  //fscanf(uniform2index, "%s %d %d", uniform_name, &index, &size);

	  for(foundUniformNum = 0; foundUniformNum < records; foundUniformNum++)
	    {
	      if(!strcmp(uniform_name, uniformTable[foundUniformNum].name))
		break;
	    }
	  if(foundUniformNum == records)
	    {
	      cout << "ERROR::setupUniformLoading():cannot find uniform name match\n";
	      return 1;	      
	    }
	  //cout << "size: " << size << endl;
	  for(int i = 0; i < size; i++)
	    outputFile << "stv r0, c" << uniformTable[foundUniformNum].constantReg + i << ", " << index + i << endl;
	}
      
      fclose(uniform2index);
    }
  else if(!strncmp(inputFile, "fragment.s", 10))
    {
      uniform2constantReg = fopen("uniform2constantReg.frag", "r");
      records = 0;
      while(fscanf(uniform2constantReg, "%s %d", uniformTable[records].name, &uniformTable[records].constantReg) != EOF)
	{
	  //fscanf(uniform2constantReg, "%s %d", uniformTable[records].name, &uniformTable[records].constantReg);
	  records++;
	}
      fclose(uniform2constantReg);

      for(int i = 0; i < records; i++)
	cout << "Name: " << setw(17) << uniformTable[i].name << setw(14) << "ConstReg: " << uniformTable[i].constantReg << endl;

      uniform2index = fopen("uniform2index.frag", "r");
      while(fscanf(uniform2index, "%s %d %d", uniform_name, &index, &size) != EOF)
	{
	  //fscanf(uniform2index, "%s %d %d", uniform_name, &index, &size);

	  for(foundUniformNum = 0; foundUniformNum < records; foundUniformNum++)
	    {
	      if(!strcmp(uniform_name, uniformTable[foundUniformNum].name))
		break;
	    }
	  if(foundUniformNum == records)
	    {
	      cout << "ERROR::setupUniformLoading():cannot find uniform name match\n";
	      return 1;	      
	    }
	  //cout << "size: " << size << endl;
	  for(int i = 0; i < size; i++)
	    outputFile << "stv r0, c" << uniformTable[foundUniformNum].constantReg + i << ", " << index + i << endl;
	}
      
      fclose(uniform2index);
    }
  else
    {
      cout << "ERROR::setupUniformLoading():Cannot open file\n";
      return 1;
    }
}

int main(int argc, char* argv[])
{

  ifstream iFile;
  ofstream oFile;
  FILE *iPCFile;
  char fileString[256];
  char* token;
  
  int table_index = 0;
  int ADDI_flag = 0;
  int PCtable[MAX_CODE_LINE];

  if(argc != 2)
    {
    cout << "usage: asm_mapping [input filename]\n";
    return 0;
    }
  else
    {
      iFile.open(argv[1]);
      oFile.open("output.txt");
      if(iFile == NULL || oFile == NULL)
	{
	cout << "error opening input/output file\n";
	return 0;
	}
    }
  
  //create shader compiler table
  createSCT(argv[1]);

  //create Uniform Table
  system("./uniform_mapping.sh");

  //create nsysu2attila transcode
  system("./transcode.sh");

  //create nsysu2attilaPC for new ProgramCounter
  system("./adjustPC.sh");

  //open nsysu2attila.vert or nsysu2attila.frag
  iFile.close();
  int nsysuPC, attilaPC;
  if(!strncmp(argv[1], "vertex.s", 8))
    {
      iFile.open("nsysu2attila.vert");
      iPCFile = fopen("nsysu2attilaPC.vert", "r");
      while(!feof(iPCFile))
	{
	  fscanf(iPCFile, "%d %d", &nsysuPC, &attilaPC);
	  PCtable[nsysuPC] = attilaPC;
	}
      fclose(iPCFile);
    }
  else if(!strncmp(argv[1], "fragment.s", 10))
    {
      iFile.open("nsysu2attila.frag");
      iPCFile = fopen("nsysu2attilaPC.frag", "r");
      while(!feof(iPCFile))
	{
	  fscanf(iPCFile, "%d %d", &nsysuPC, &attilaPC);
	  PCtable[nsysuPC] = attilaPC;
	}
      fclose(iPCFile);
    }
  else
    cout << "ERROR: Input file shall be either vertex.s or fragment.s\n";
  if(iFile == NULL)
    cout << "ERROR: Unable to find nsysu2attila intermidiate code\n";
    

  //search the main program till .Ltmp0
  //The better way is to detect "mtspr" which first time is start and second time is end.
  /*
  while(iFile.getline(fileString, 256))
    {
      cout << fileString << endl;
      if(!strncmp(fileString, "\tmtspr", 6))
	break;
      else if(iFile.eof())
	{
	cout << "ERROR: Cannot locate the main() assembly code\n";
	return 0;
	}
    }
  */

  /* beginning of the code translation. First we need to do I/O mapping
     for vertex shader:
     input of "nsysu r32" maps into "attila i0" as the attribute input

     for fragment shader:
     ...

     And also initialize r0 into 0
  */
  
  if(!strncmp(argv[1], "vertex.s", 8))
    {
      oFile << "mov r0, r32" << endl; //r32 shall be 0 in ATTILA at the start of the shader      
      oFile << "mov r32, i0" << endl;
      oFile << "mov r33, i1" << endl;
      oFile << "mov r34, i2" << endl;
      oFile << "mov r35, i3" << endl;
      oFile << "mov r36, i4" << endl;
      oFile << "mov r37, i5" << endl;
      oFile << "mov r38, i6" << endl;
      oFile << "mov r39, i7" << endl;
    }
  if(!strncmp(argv[1], "fragment.s", 10))
    {
      oFile << "mov r0, r32" << endl; //r32 shall be 0 in ATTILA at the start of the shader
      oFile << "mov r32, i0" << endl;
      /*
      oFile << "mov r33, i7" << endl;
      oFile << "mov r34, i8" << endl;
      oFile << "mov r35, i9" << endl;
      oFile << "mov r36, i10" << endl;
      */
      oFile << "mov r33, i1" << endl;
      oFile << "mov r34, i2" << endl;
      oFile << "mov r35, i3" << endl;
      oFile << "mov r36, i4" << endl;
      oFile << "mov r37, i5" << endl;
      oFile << "mov r38, i6" << endl;
      oFile << "mov r39, i7" << endl;
      oFile << "mov r40, i8" << endl;
      oFile << "mov r41, i9" << endl;
      oFile << "mov r42, i10" << endl;
      oFile << "mov r43, i11" << endl;
      oFile << "mov r44, i12" << endl;
      oFile << "mov r45, i13" << endl;
      oFile << "mov r46, i14" << endl;
      oFile << "mov r47, i15" << endl;
    }   

  //setupUniformLoading
  setupUniformLoading(argv[1], oFile);
  
  //instruction conversion
  int currentPC = -1;
  while(iFile.getline(fileString, 256))
    {
      currentPC++;
      if(currentPC > MAX_CODE_LINE)
	{
	  cout << "ERROR: Instruction exceed maximun number\n";
	  cout << "Please change MAX_LINE_NUMBER in converter main.cpp\n";
	  cout << "also change OptimizedDynamicMemory::initialize in attila assembler.cpp\n";
	  return 0;
	}
      if(!strncmp(fileString, "end code.", 9))
	break;
      else
	{
	  //Diaply input line for debug purpose. (also show errors)
	  //cout << fileString << endl;

	  if(!strncmp(fileString, "ldi ", 4))
	    {
	      strtok(fileString, " ");
	      //oFile << "addi " << strtok(NULL, ". ");
	      oFile << "add " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ", ";
	      oFile << "r0, ";
	      oFile << strtok(NULL, " ,") << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "ldif ", 5))
	    {
	      strtok(fileString, " ");
	      oFile << "add " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ", ";
	      oFile << strtok(NULL, " ") << " ";
	      oFile << strtok(NULL, " ,") << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "add ", 4))
	    {
	      strtok(fileString, " ");
	      //oFile << "addi " << strtok(NULL, ". ");
	      oFile << "add " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ", ";
	      oFile << strtok(NULL, " ") << " ";
	      oFile << strtok(NULL, " ,") << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "addi ", 4))
	    {
	      strtok(fileString, " ");
	      //oFile << "addi " << strtok(NULL, ". ");
	      oFile << "add " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ", ";
	      oFile << strtok(NULL, " ") << " ";
	      oFile << strtok(NULL, " ,") << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "addf ", 5))
	    {
	      strtok(fileString, " ");
	      oFile << "add " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ", ";
	      oFile << strtok(NULL, " ") << " ";
	      oFile << strtok(NULL, " ,") << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "addif ", 6))
	    {
	      strtok(fileString, " ");
	      oFile << "add " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ", ";
	      oFile << strtok(NULL, " ") << " ";
	      oFile << strtok(NULL, " ,") << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "mvr ", 4))
	    {
	      strtok(fileString, " ");
	      oFile << "mov " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ",";
	      oFile << strtok(NULL, ",") << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "dpf ", 4))
	    {
	      strtok(fileString, " ");
	      oFile << "dp4 " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ", ";
	      oFile << strtok(NULL, " ") << " ";
	      oFile << strtok(NULL, ", ") << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "mulf ", 5))
	    {
	      strtok(fileString, " ");
	      oFile << "mul " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ", ";
	      oFile << strtok(NULL, " ") << " ";
	      oFile << strtok(NULL, ", ") << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "mul ", 4))
	    {
	      strtok(fileString, " ");
	      //oFile << "muli " << strtok(NULL, ". ");
	      oFile << "mul " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ", ";
	      oFile << strtok(NULL, " ") << " ";
	      oFile << strtok(NULL, ", ") << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "rcp ", 4))
	    {
	      strtok(fileString, " ");
	      oFile << "rcp " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ",";
	      oFile << strtok(NULL, ",") << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "maxf ", 5))
	    {
	      strtok(fileString, " ");
	      oFile << "max " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ", ";
	      oFile << strtok(NULL, " ") << " ";
	      oFile << strtok(NULL, ",") << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "log2 ", 5))
	    {
	      strtok(fileString, " ");
	      oFile << "lg2 " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ",";
	      oFile << strtok(NULL, ",") << ".x" << endl; // we add .x at the tail to ensure correctness
	      continue;
	    }
	  if(!strncmp(fileString, "pow2 ", 5))
	    {
	      strtok(fileString, " ");
	      oFile << "ex2 " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ",";
	      oFile << strtok(NULL, ",") << ".x" << endl;  // we add .x at the tail to ensure correctness
	      continue;
	    }
	  if(!strncmp(fileString, "div ", 4))
	    {
	      stringstream s_res;
	      stringstream s_src;
	      stringstream s_mask;

	      strtok(fileString, " ");
	      s_res << strtok(NULL, ". ");
	      s_mask << maskConverter(strtok(NULL, ", "));
	      //cout << s_res.str() << endl;
	      s_src << strtok(NULL, " ");
	      //cout << s_src.str() << endl;

	      oFile << "rcp r48.x, " << s_src.str() << ".x\n";
	      oFile << "mul " << s_res.str() << s_mask.str() << ", " << s_res.str() << ".x, r48.x\n";
	      continue;
	    }
	  if(!strncmp(fileString, "dsq ", 4))
	    {
	      stringstream s_res;
	      stringstream s_src;
	      stringstream s_mask;

	      strtok(fileString, " ");
	      s_res << strtok(NULL, ". ");
	      s_mask << maskConverter(strtok(NULL, ", "));
	      //cout << s_res.str() << endl;
	      s_src << strtok(NULL, " ");
	      //cout << s_src.str() << endl;

	      oFile << "rsq r48.x, " << s_src.str() << ".x\n";
	      oFile << "mul " << s_res.str() << s_mask.str() << ", " << s_res.str() << ".x, r48.x\n";
	      continue;
	    }
	  if(!strncmp(fileString, "xor ", 4))
	    {
	      strtok(fileString, " ");
	      oFile << "mov " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ",";
	      oFile << " r0" << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "tex ", 4))
	    {
	      strtok(fileString, " ");
	      oFile << "tex " << strtok(NULL, ", ");
	      //oFile << ", " << strtok(NULL, " ") << ", t0" << endl;
	      oFile << ", " << strtok(NULL, " ") << ", r15" << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "beqs ", 5))
	    {
	      strtok(fileString, " ");
	      oFile << "stpeqi p0, " << strtok(NULL, " ");
	      oFile << " " << strtok(NULL, " ,") << endl;
	      int relativePC = atoi(strtok(NULL, " ,"));
	      oFile << "jmp p0, " << relativePC << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "bltsf ", 6))
	    {
	      strtok(fileString, " ");
	      oFile << "setplt p0, " << strtok(NULL, " ");
	      oFile << " " << strtok(NULL, " ,") << endl;
	      int relativePC = atoi(strtok(NULL, " ,"));
	      oFile << "jmp p0, " << relativePC << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "bgtsf ", 6))
	    {
	      strtok(fileString, " ");
	      oFile << "setpgt p0, " << strtok(NULL, " ");
	      oFile << " " << strtok(NULL, " ,") << endl;
	      int relativePC = atoi(strtok(NULL, " ,"));
	      oFile << "jmp p0, " << relativePC << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "jmp ", 4))
	    {
	      int targetPC;
	      strtok(fileString, " ");
	      targetPC = atoi(strtok(NULL, " "));
	      oFile << "jmp true, " << PCtable[targetPC] - PCtable[currentPC] << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "ldv ", 4))
	    {
	      char fileString_backup[256];
	      stringstream s_str;
	      strcpy(fileString_backup, fileString);
	      //cout << "MARKED: " << fileString_backup << endl;
	      strtok(fileString, " ");
	      strtok(NULL, " ");
	      char* s_regNum = strtok(NULL, "r, ");
	      //cout << "S_REGNUM: " << s_regNum << endl;
	      int i_regNum = atoi(s_regNum); 
     	      //oFile << "LOAD REGISTER R" << i_regNum;
	      //oFile << "mov r" << i_regNum;
	      s_str << "mov r" << i_regNum;
	      int i;
	      for(i = 0; i < SCTIndex; i++)
		{
		  if(ShaderCompilerTable[i].nsysu_reg == i_regNum)
		    break;
		}

	      /* THIS section is instruction LD/ST direct access to kenny virtual memory */
	      i = SCTIndex; //kenny add to force generic LD uniform
	      if(i == SCTIndex)
		{
		  //cout << "ERROR: cannot find a match for load register. Using c95\n";
		  //oFile << ", c95" << endl;
		  //oFile << fileString_backup << endl;
		  s_str.str(""); //This LDV instruction isn't loading a uniform but a previous saved variable so we clear the s_str
		  strtok(fileString_backup, " ");
		  s_str << "ldv " << strtok(NULL, ". ");
		  s_str << maskConverter(strtok(NULL, " ,")) << ", ";
		  s_str << strtok(NULL, " ") << " ";
		  s_str << strtok(NULL, ", ") << endl;
		  oFile << s_str.str();
		  continue;
		}
	      /* end of LD/ST access and skip the rest by continue */

	      //oFile << " " << ShaderCompilerTable[i].name << endl;
	      //oFile << ", c" << ShaderCompilerTable[i].attila_reg << endl;
	      s_str << ", c" << ShaderCompilerTable[i].attila_reg << endl;
	      oFile << s_str.str();

	      cout << "=============ShaderCompilerTable==================\n";
	      cout << setw(20) << "NAME" << setw(15) << "NSYSU_REG" << setw(15) << "ATTILA_REG" << endl;
	      int temp = i;
	      for(int i=0; i<SCTIndex; i++)
		if ( i == temp)
		  cout << setw(20) << ShaderCompilerTable[i].name << "[" << ShaderCompilerTable[i].index << "]" << setw(15) << ShaderCompilerTable[i].nsysu_reg << setw(15) << ShaderCompilerTable[i].attila_reg << " <--" << endl;
		else
		  cout << setw(20) << ShaderCompilerTable[i].name << "[" << ShaderCompilerTable[i].index << "]" << setw(15) << ShaderCompilerTable[i].nsysu_reg << setw(15) << ShaderCompilerTable[i].attila_reg << endl;
	      cout << "==================================================\n";
	      
	      //int I_temp;
	      //cin >> I_temp;
	      
	      strcpy(ShaderCompilerTable[i].name, "USED");
	      ShaderCompilerTable[i].nsysu_reg = 999;
	      ShaderCompilerTable[i].attila_reg = 999;
      	      continue;
	    }
	  if(!strncmp(fileString, "stv ", 4))
	    {
	      strtok(fileString, " ");
	      oFile << "stv " << strtok(NULL, ". ");
	      oFile << maskConverter(strtok(NULL, " ,")) << ", ";
	      oFile << strtok(NULL, " ") << " ";
	      oFile << strtok(NULL, ", ") << endl;
	      continue;
	    }
	  if(!strncmp(fileString, "nop ", 4))
	    {
	      oFile << "nop\n";
	      continue;
	    }
	  else
	    cout << "ERROR: command [" << fileString << "] not found\n";
	}     
    }


  /* 
   End of instruction conversion. At the final point,
   We need to map the output of vertex and fragment to target output registers
   
   for vertex, result.posistion is o0
   so we map r32 (default first varying to store position) to o0
   first varying in NSYSU is r33 map to o7 (result.texcoord[1])
   second                    r34 map to o8 (result.texcoord[2])
  
   for fragment, result.color is o1
   NSYSU r0 map to o1
  */  
  if(!strncmp(argv[1], "vertex.s", 8))
    {
      //oFile << "mov r32, r15\n"; // if we trim the viewport code, the final result shall be in R30 (was a mistake, no longer needed)
      oFile << "mov r32, r16\n";
      oFile << "mov o0, r32\n";
      /*
      oFile << "mov o7, r33\n";
      oFile << "mov o8, r34\n";
      oFile << "mov o9, r35\n";
      oFile << "mov o10, r36\n";
      oFile << "mov o11, r37\n";
      oFile << "mov o12, r38\n";
      oFile << "mov o13, r39\n";
      oFile << "mov o14, r40\n";
      oFile << "mov o15, r41\n";
      oFile << "mov o16, r42\n";
      oFile << "mov o17, r43\n";
      oFile << "mov o18, r44\n";
      oFile << "mov o19, r45\n";
      oFile << "mov o20, r46\n";
      oFile << "mov o21, r47\n";
      oFile << "mov o22, r48\n";
      */

      oFile << "mov o1, r33\n";
      oFile << "mov o2, r34\n";
      oFile << "mov o3, r35\n";
      oFile << "mov o4, r36\n";
      oFile << "mov o5, r37\n";
      oFile << "mov o6, r38\n";
      oFile << "mov o7, r39\n";
      oFile << "mov o8, r40\n";
      oFile << "mov o9, r41\n";
      oFile << "mov o10, r42\n";
      oFile << "mov o11, r43\n";
      oFile << "mov o12, r44\n";
      oFile << "mov o13, r45\n";
      oFile << "mov o14, r46\n";
      oFile << "mov o15, r47\n";

      oFile.close();

      //shell script to trim off viewport code for NSYSU architecture
      system("./viewport_code_trim.sh");    
    }
  else if(!strncmp(argv[1], "fragment.s", 10))
    {
      oFile << "mov o1, r0\n";
      oFile.close();
    }
  cout << "output.txt has been generated, use attilaAssembler to create binary for ATTILA SIMULATOR\n";

  return 0;
}
