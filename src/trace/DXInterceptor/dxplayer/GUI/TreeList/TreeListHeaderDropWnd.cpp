////////////////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "TreeListHeaderCtrl.h"
#include "TreeListTipCtrl.h"
#include "TreeListStaticCtrl.h"
#include "TreeListEditCtrl.h"
#include "TreeListComboCtrl.h"
#include "TreeListCtrl.h"
#include "TreeListDC.h"
#include "TreeListHeaderDropWnd.h"

////////////////////////////////////////////////////////////////////////////////

static lpfnUpdateLayeredWindow g_lpfnUpdateLayeredWindow = NULL;
static lpfnSetLayeredWindowAttributes g_lpfnSetLayeredWindowAttributes = NULL;

////////////////////////////////////////////////////////////////////////////////

CTreeListHeaderDropWnd::CTreeListHeaderDropWnd() :
  m_pTreeListHeaderCtrl( NULL )
{
  // register the window class
  WNDCLASS wndclass;
  HINSTANCE hInst = AfxGetInstanceHandle();

  if(!(::GetClassInfo(hInst, TLHDROPWND_CLASSNAME, &wndclass)))
  {
    wndclass.style = CS_HREDRAW | CS_VREDRAW ; //CS_SAVEBITS ;
    wndclass.lpfnWndProc = ::DefWindowProc;
    wndclass.cbClsExtra = wndclass.cbWndExtra = 0;
    wndclass.hInstance = hInst;
    wndclass.hIcon = NULL;
    wndclass.hCursor = LoadCursor( hInst, IDC_ARROW);
    wndclass.hbrBackground = (HBRUSH)(COLOR_3DFACE + 1); 
    wndclass.lpszMenuName = NULL;
    wndclass.lpszClassName = TLHDROPWND_CLASSNAME;
    if (!AfxRegisterClass(&wndclass))
      AfxThrowResourceException();
  }

  // default color
  m_cr3DFace    = GetSysColor( COLOR_3DFACE );
  m_cr3DLight    = GetSysColor( COLOR_3DHILIGHT );
  m_cr3DShadow  = GetSysColor( COLOR_3DSHADOW );
  m_crText    = GetSysColor( COLOR_BTNTEXT );

  // get layer window
  if( g_lpfnUpdateLayeredWindow == NULL || g_lpfnSetLayeredWindowAttributes == NULL )
  {
    HMODULE hUser32 = GetModuleHandle(_T("USER32.DLL"));

    g_lpfnUpdateLayeredWindow =  (lpfnUpdateLayeredWindow)GetProcAddress( hUser32, _T("UpdateLayeredWindow") );
    g_lpfnSetLayeredWindowAttributes = (lpfnSetLayeredWindowAttributes)GetProcAddress( hUser32, _T("SetLayeredWindowAttributes") );

    if( g_lpfnUpdateLayeredWindow == NULL || g_lpfnSetLayeredWindowAttributes == NULL )
      m_bLayeredWindows = FALSE;
    else
      m_bLayeredWindows = TRUE;
  }
}

CTreeListHeaderDropWnd::~CTreeListHeaderDropWnd()
{
  m_rgn.DeleteObject();
}

BEGIN_MESSAGE_MAP(CTreeListHeaderDropWnd, CWnd)
  //{{AFX_MSG_MAP(CTreeListHeaderDropWnd)
  ON_WM_ERASEBKGND()
  ON_WM_PAINT()
  //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CTreeListHeaderDropWnd message handlers
BOOL CTreeListHeaderDropWnd::Create( CTreeListHeaderCtrl* pTreeListHeaderCtrl )
{
  ASSERT_VALID( pTreeListHeaderCtrl );
  
  m_pTreeListHeaderCtrl = pTreeListHeaderCtrl;

  DWORD dwStyle  = WS_POPUP | WS_DISABLED;
  DWORD dwExStyle = WS_EX_TOOLWINDOW | WS_EX_TOPMOST;

  if( m_bLayeredWindows )
    dwExStyle |= WS_EX_LAYERED;

  if( !CreateEx( dwExStyle, TLHDROPWND_CLASSNAME, NULL, dwStyle, 
    0, 0, 80, 80, NULL, NULL, NULL ) )
    return FALSE;

  CRgn rgnDown, rgnUp;
  
  POINT ptDown[9] = {  8, 0,    8, 4,   11, 4,    6,  9,   1, 4,   4, 4,    4, 0,    6, 0  };
  POINT ptUp[9]  = {  8, 0,    8,-4,   12,-4,    6,-10,   0,-4,   4,-4,    4, 0,    6, 0  };

  rgnDown.CreatePolygonRgn( ptDown, 9, ALTERNATE );
  rgnUp.CreatePolygonRgn( ptUp, 9, ALTERNATE );
  rgnUp.OffsetRgn( 0, 10 );
  rgnUp.OffsetRgn( 0, 11 );
  rgnUp.OffsetRgn( 0, m_pTreeListHeaderCtrl->GetHeaderHeight() );

  m_rgn.CreateRectRgn(0, 0, 1, 1);
  m_rgn.CombineRgn(&rgnDown, &rgnUp, RGN_OR);
  SetWindowRgn( m_rgn, FALSE );

  rgnDown.DeleteObject();
  rgnUp.DeleteObject();

  return TRUE;
}

BOOL CTreeListHeaderDropWnd::OnEraseBkgnd(CDC* pDC) 
{
  return TRUE;
}

void CTreeListHeaderDropWnd::OnPaint() 
{
  CPaintDC dc(this); // device context for painting

    if( m_pTreeListHeaderCtrl->m_bOffScreenBuffer )
    {
        CTreeListDC MemDC(&dc);
        DrawWnd(&MemDC);
    }
    else
  {
        DrawWnd(&dc);
  }
}

BOOL CTreeListHeaderDropWnd::DrawWnd( CDC* pDC )
{
  CRect rcClient;
  GetClientRect( rcClient );
  pDC->FillSolidRect( rcClient , 0x0000FF );
  return TRUE;
}

BOOL CTreeListHeaderDropWnd::Show( CPoint pt )
{
  pt.Offset( -6, -11 );

  SetWindowPos( &wndTop, pt.x, pt.y, 0, 0, SWP_NOOWNERZORDER | SWP_SHOWWINDOW | SWP_NOACTIVATE | SWP_NOSIZE );

  if( m_bLayeredWindows )
    g_lpfnSetLayeredWindowAttributes( GetSafeHwnd(), 0x000000, 160, ULW_ALPHA );

  return TRUE;
}

BOOL CTreeListHeaderDropWnd::Hide()
{
  SetWindowPos( &wndTop, 0, 0, 0, 0, SWP_NOOWNERZORDER | SWP_HIDEWINDOW | SWP_NOACTIVATE | SWP_NOSIZE | SWP_NOMOVE );

  return TRUE;
}

////////////////////////////////////////////////////////////////////////////////
