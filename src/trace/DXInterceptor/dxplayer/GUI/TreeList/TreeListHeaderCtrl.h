////////////////////////////////////////////////////////////////////////////////

#pragma once

////////////////////////////////////////////////////////////////////////////////

#include "TreeListColumnInfo.h"

////////////////////////////////////////////////////////////////////////////////

#define TREELISTHEADERCTRL_CLASSNAME _T("TreeListCtrl.TreeListHeaderCtrl")
#define DEFAULT_HEIGHT        20

// TreeListHeaderCtrl Format
#define TLHS_SHOWHEAD        0x0001    // show header control
#define TLHS_DRAGDROP        0x0002    // drag and drop header on header
#define TLHS_FULLDRAG        0x0004    // drag and drop header to any where 
#define TLHS_HOTTRACK        0x0008    // hot track header

#define TLHS_MASKDRAG        ( TLHS_DRAGDROP | TLHS_FULLDRAG )

// TreeListHeaderCtrl HitTest Position
#define TLHT_ONHEADERSIZE      0x0001
#define TLHT_ONHEADERSPLIT      0x0002

#define TLHT_ONHEADERLEFT      0x0004
#define TLHT_ONHEADERRIGHT      0x0008

#define TLHT_ONHEADERGAPS      0x0001
#define TLHT_ONHEADERSORT      0x0002
#define TLHT_ONHEADERIMAGE      0x0004
#define  TLHT_ONHEADERTEXT      0x0008

#define TLHT_ONHEADER  ( TLHT_ONHEADERGAPS | TLHT_ONHEADERSORT | TLHT_ONHEADERIMAGE | TLHT_ONHEADERTEXT )

////////////////////////////////////////////////////////////////////////////////

class TreeListColumnInfo;

class CTreeListHeaderCtrl : public CWnd
{
  friend class CTreeListCtrl;
  friend class CTreeListHeaderDragWnd;
  friend class CTreeListHeaderDropWnd;
// Construction
public:
  CTreeListHeaderCtrl();
  BOOL Create( DWORD dwStyle, const RECT& rect, CTreeListCtrl* pParentWnd, UINT nID = 0 );

private:
  BOOL Create();

// Members
public:

protected:
  COLORREF  m_cr3DBkgnd;
  COLORREF  m_cr3DFace;
  COLORREF  m_cr3DLight;
  COLORREF  m_cr3DShadow;
  COLORREF  m_crText;

  CFont    m_Font;          // font
  int      m_nHeaderHeight;    // height

private:
  DWORD    m_dwStyle;
  BOOL    m_bSubclassFromCreate;
  BOOL    m_bOffScreenBuffer;

  HCURSOR    m_hSize;
  HCURSOR    m_hSplit;
  HCURSOR    m_hArrow;

  CImageList      m_imgSort;
  CImageList      m_imgHeader;

  CImageList*      m_pImageList;
  CTreeListCtrl*    m_pTreeListCtrl;

  BOOL    m_bSizing;    
  BOOL    m_bSplit;    
  BOOL    m_bDraging;    

  int      m_iCol;      

  CTreeListHeaderDragWnd*  m_pDragWnd;
  CTreeListHeaderDropWnd*  m_pDropWnd;
  CPoint      m_ptBegin;
  CPoint      m_ptDelta;

// Attributes
public:
  void  SetHeaderFont();
  CFont*  GetHeaderFont();  
  int    GetHeaderWidth();
  int    SetHeaderHeight( int nHeight = -1 );
  int    GetHeaderHeight();

  BOOL  GetHeaderRect( CRect& rcHeader, int iCol );

  BOOL  HitTestSize( CPoint pt, int* pFlag, int* pCol );
  BOOL  HitTestGaps( CPoint pt, int* pFlag, int* pCol );
  BOOL  HitTest( CPoint pt, int* pFlag, int* pCol );

protected:
  BOOL  DrawCtrl( CDC* pDC );
  BOOL  DrawHeaders( CDC* pDC );
  BOOL  DrawHeader( CDC* pDC, CRect rcHeader, int iCol );

private:
  BOOL  BeginSizing( CPoint point );
  BOOL  EndSizing( CPoint point );
  BOOL  DoSizing( CPoint point );

  BOOL  BeginDraging( CPoint point );
  BOOL  EndDraging( CPoint point );
  BOOL  DoDraging( CPoint point );

  BOOL  DoChecking( CPoint point );

  BOOL  EndSizing();
  BOOL  EndDraging();

  int    GetSortIndex( int iCol );

  DWORD  GetStyle();
  DWORD  SetStyle( DWORD dwStyle );

// Operations
public:

// Overrides
  // ClassWizard generated virtual function overrides
  //{{AFX_VIRTUAL(CTreeListHeaderCtrl)
  protected:
  virtual void PreSubclassWindow();
  //}}AFX_VIRTUAL

// Implementation
public:
  virtual ~CTreeListHeaderCtrl();

  // Generated message map functions
protected:
  //{{AFX_MSG(CTreeListHeaderCtrl)
  afx_msg BOOL OnEraseBkgnd(CDC* pDC);
  afx_msg void OnPaint();
  afx_msg void OnMouseMove(UINT nFlags, CPoint point);
  afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
  afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
  afx_msg void OnLButtonDblClk(UINT nFlags, CPoint point);
  afx_msg void OnCancelMode();
  afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
  afx_msg void OnRButtonUp(UINT nFlags, CPoint point);
  afx_msg void OnRButtonDblClk(UINT nFlags, CPoint point);
  //}}AFX_MSG
  afx_msg LRESULT OnLayout( WPARAM wParam, LPARAM lParam );
  DECLARE_MESSAGE_MAP()
};

////////////////////////////////////////////////////////////////////////////////
