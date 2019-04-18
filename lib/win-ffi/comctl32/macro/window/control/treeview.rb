require_relative '../../../../../win-ffi/comctl32/enum/window/control/treeview/message'

module WinFFI
  module Comctl32
    class << self
      # TODO
      #define TVI_ROOT                ((HTREEITEM)(ULONG_PTR)-0x10000)
      #define TVI_FIRST               ((HTREEITEM)(ULONG_PTR)-0x0FFFF)
      #define TVI_LAST                ((HTREEITEM)(ULONG_PTR)-0x0FFFE)
      #define TVI_SORT                ((HTREEITEM)(ULONG_PTR)-0x0FFFD)

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_insertitem
      #define TreeView_InsertItem(hwnd, lpis) (HTREEITEM)SNDMSG((hwnd), TVM_INSERTITEM, 0, (LPARAM)(LPTV_INSERTSTRUCT)(lpis))
      def TreeView_InsertItem(hwnd, lpis) send_treeview_message(hwnd, :INSERTITEM, lparam: lpis) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_deleteitem
      #define TreeView_DeleteItem(hwnd, hitem) (BOOL)SNDMSG((hwnd), TVM_DELETEITEM, 0, (LPARAM)(HTREEITEM)(hitem))
      def TreeView_DeleteItem(hwnd, hitem) send_treeview_message(hwnd, :DELETEITEM, lparam: hitem) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_deleteallitems
      #define TreeView_DeleteAllItems(hwnd) (BOOL)SNDMSG((hwnd), TVM_DELETEITEM, 0, (LPARAM)TVI_ROOT)
      def TreeView_DeleteAllItems(hwnd)
        send_treeview_message(hwnd, :DELETEITEM, lparam: TVI_ROOT) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_expand
      #define TreeView_Expand(hwnd, hitem, code) (BOOL)SNDMSG((hwnd), TVM_EXPAND, (WPARAM)(code), (LPARAM)(HTREEITEM)(hitem))
      def TreeView_Expand(hwnd, hitem, code) send_treeview_message(hwnd, TVM_EXPAND, wparam: code, lparam: hitem) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getitemrect
      #define TreeView_GetItemRect(hwnd, hitem, prc, code) (*(HTREEITEM *)(prc) = (hitem), (BOOL)SNDMSG((hwnd), TVM_GETITEMRECT, (WPARAM)(code), (LPARAM)(RECT *)(prc)))
      def TreeView_GetItemRect(hwnd, hitem, prc, code)
        # (*(HTREEITEM *)(prc) = (hitem), send_treeview_message(hwnd, TVM_GETITEMRECT, code, prc))
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getcount
      #define TreeView_GetCount(hwnd) (UINT)SNDMSG((hwnd), TVM_GETCOUNT, 0, 0)
      def TreeView_GetCount(hwnd) send_treeview_message(hwnd, :GETCOUNT) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getindent
      #define TreeView_GetIndent(hwnd) (UINT)SNDMSG((hwnd), TVM_GETINDENT, 0, 0)
      def TreeView_GetIndent(hwnd) send_treeview_message(hwnd, :GETINDENT) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setindent
      #define TreeView_SetIndent(hwnd, indent)  (BOOL)SNDMSG((hwnd), TVM_SETINDENT, (WPARAM)(indent), 0)
      def TreeView_SetIndent(hwnd, indent) send_treeview_message(hwnd, :SETINDENT, wparam: indent) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getimagelist
      #define TreeView_GetImageList(hwnd, iImage) (HIMAGELIST)SNDMSG((hwnd), TVM_GETIMAGELIST, iImage, 0)
      def TreeView_GetImageList(hwnd, iImage) send_treeview_message(hwnd, :GETIMAGELIST, wparam: iImage) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setimagelist
      #define TreeView_SetImageList(hwnd, himl, iImage) (HIMAGELIST)SNDMSG((hwnd), TVM_SETIMAGELIST, iImage, (LPARAM)(HIMAGELIST)(himl))
      def TreeView_SetImageList(hwnd, himl, iImage)
        send_treeview_message(hwnd, :SETIMAGELIST, TreeViewSetImageList[iImage], himl)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getnextitem
      #define TreeView_GetNextItem(hwnd, hitem, code) (HTREEITEM)SNDMSG((hwnd), TVM_GETNEXTITEM, (WPARAM)(code), (LPARAM)(HTREEITEM)(hitem))
      def TreeView_GetNextItem(hwnd, hitem, code)
        send_treeview_message(hwnd, :GETNEXTITEM, wparam: code, lparam: hitem)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getchild
      #define TreeView_GetChild(hwnd, hitem) TreeView_GetNextItem(hwnd, hitem, TVGN_CHILD)
      def TreeView_GetChild(hwnd, hitem) TreeView_GetNextItem(hwnd, hitem, TreeViewGetNextItem[:CHILD]) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getnextsibling
      #define TreeView_GetNextSibling(hwnd, hitem) TreeView_GetNextItem(hwnd, hitem, TVGN_NEXT)
      def TreeView_GetNextSibling(hwnd, hitem) TreeView_GetNextItem(hwnd, hitem, TreeViewGetNextItem[:NEXT]) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getprevsibling
      #define TreeView_GetPrevSibling(hwnd, hitem)    TreeView_GetNextItem(hwnd, hitem, TVGN_PREVIOUS)
      def TreeView_GetPrevSibling(hwnd, hitem) TreeView_GetNextItem(hwnd, hitem, TreeViewGetNextItem[:PREVIOUS]) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getparent
      #define TreeView_GetParent(hwnd, hitem) TreeView_GetNextItem(hwnd, hitem, TVGN_PARENT)
      def TreeView_GetParent(hwnd, hitem) TreeView_GetNextItem(hwnd, hitem, TreeViewGetNextItem[:PARENT]) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getfirstvisible
      #define TreeView_GetFirstVisible(hwnd) TreeView_GetNextItem(hwnd, NULL, TVGN_FIRSTVISIBLE)
      def TreeView_GetFirstVisible(hwnd) TreeView_GetNextItem(hwnd, NULL, TreeViewGetNextItem[:FIRSTVISIBLE]) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getnextvisible
      #define TreeView_GetNextVisible(hwnd, hitem) TreeView_GetNextItem(hwnd, hitem, TVGN_NEXTVISIBLE)
      def TreeView_GetNextVisible(hwnd, hitem) TreeView_GetNextItem(hwnd, hitem, TreeViewGetNextItem[:NEXTVISIBLE]) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getprevvisible
      #define TreeView_GetPrevVisible(hwnd, hitem) TreeView_GetNextItem(hwnd, hitem, TVGN_PREVIOUSVISIBLE)
      def TreeView_GetPrevVisible(hwnd, hitem)
        TreeView_GetNextItem(hwnd, hitem, TreeViewGetNextItem[:PREVIOUSVISIBLE])
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getselection
      #define TreeView_GetSelection(hwnd) TreeView_GetNextItem(hwnd, NULL, TVGN_CARET)
      def TreeView_GetSelection(hwnd) TreeView_GetNextItem(hwnd, NULL, TreeViewGetNextItem[:CARET]) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getdrophilight
      #define TreeView_GetDropHilight(hwnd) TreeView_GetNextItem(hwnd, NULL, TVGN_DROPHILITE)
      def TreeView_GetDropHilight(hwnd) TreeView_GetNextItem(hwnd, NULL, TreeViewGetNextItem[:DROPHILITE]) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getroot
      #define TreeView_GetRoot(hwnd) TreeView_GetNextItem(hwnd, NULL, TVGN_ROOT)
      def TreeView_GetRoot(hwnd) TreeView_GetNextItem(hwnd, NULL, TreeViewGetNextItem[:ROOT]) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getlastvisible
      #define TreeView_GetLastVisible(hwnd) TreeView_GetNextItem(hwnd, NULL, TVGN_LASTVISIBLE)
      def TreeView_GetLastVisible(hwnd)
        TreeView_GetNextItem(hwnd, NULL, TreeViewGetNextItem[:LASTVISIBLE])
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_select
      #define TreeView_Select(hwnd, hitem, code) (BOOL)SNDMSG((hwnd), TVM_SELECTITEM, (WPARAM)(code), (LPARAM)(HTREEITEM)(hitem))
      def TreeView_Select(hwnd, hitem, code) send_treeview_message(hwnd, :SELECTITEM, wparam: code, lparam: hitem) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_selectitem
      #define TreeView_SelectItem(hwnd, hitem) TreeView_Select(hwnd, hitem, TVGN_CARET)
      def TreeView_SelectItem(hwnd, hitem) TreeView_Select(hwnd, hitem, TreeViewGetNextItem[:CARET]) end


      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_selectdroptarget
      #define TreeView_SelectDropTarget(hwnd, hitem) TreeView_Select(hwnd, hitem, TVGN_DROPHILITE)
      def TreeView_SelectDropTarget(hwnd, hitem) TreeView_Select(hwnd, hitem, TreeViewGetNextItem[:DROPHILITE]) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_selectsetfirstvisible
      #define TreeView_SelectSetFirstVisible(hwnd, hitem) TreeView_Select(hwnd, hitem, TVGN_FIRSTVISIBLE)
      def TreeView_SelectSetFirstVisible(hwnd, hitem) TreeView_Select(hwnd, hitem, TreeViewGetNextItem[:FIRSTVISIBLE]) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getitem
      #define TreeView_GetItem(hwnd, pitem) (BOOL)SNDMSG((hwnd), TVM_GETITEM, 0, (LPARAM)(TV_ITEM *)(pitem))
      def TreeView_GetItem(hwnd, pitem) send_treeview_message(hwnd, :GETITEM, 0, lparam: pitem) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setitem
      #define TreeView_SetItem(hwnd, pitem) (BOOL)SNDMSG((hwnd), TVM_SETITEM, 0, (LPARAM)(const TV_ITEM *)(pitem))
      def TreeView_SetItem(hwnd, pitem) send_treeview_message(hwnd, :SETITEM, lparam: pitem) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_editlabel
      #define TreeView_EditLabel(hwnd, hitem) (HWND)SNDMSG((hwnd), TVM_EDITLABEL, 0, (LPARAM)(HTREEITEM)(hitem))
      def TreeView_EditLabel(hwnd, hitem) send_treeview_message(hwnd, :EDITLABEL, lparam: hitem) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_geteditcontrol
      #define TreeView_GetEditControl(hwnd) (HWND)SNDMSG((hwnd), TVM_GETEDITCONTROL, 0, 0)
      def TreeView_GetEditControl(hwnd) send_treeview_message(hwnd, :GETEDITCONTROL) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getvisiblecount
      #define TreeView_GetVisibleCount(hwnd) (UINT)SNDMSG((hwnd), TVM_GETVISIBLECOUNT, 0, 0)
      def TreeView_GetVisibleCount(hwnd) send_treeview_message(hwnd, :GETVISIBLECOUNT) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_hittest
      #define TreeView_HitTest(hwnd, lpht) (HTREEITEM)SNDMSG((hwnd), TVM_HITTEST, 0, (LPARAM)(LPTV_HITTESTINFO)(lpht))
      def TreeView_HitTest(hwnd, lpht) send_treeview_message(hwnd, :HITTEST, lparam: lpht) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_createdragimage
      #define TreeView_CreateDragImage(hwnd, hitem) (HIMAGELIST)SNDMSG((hwnd), TVM_CREATEDRAGIMAGE, 0, (LPARAM)(HTREEITEM)(hitem))
      def TreeView_CreateDragImage(hwnd, hitem) send_treeview_message(hwnd, :CREATEDRAGIMAGE, lparam: hitem) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_sortchildren
      #define TreeView_SortChildren(hwnd, hitem, recurse) (BOOL)SNDMSG((hwnd), TVM_SORTCHILDREN, (WPARAM)(recurse), (LPARAM)(HTREEITEM)(hitem))
      def TreeView_SortChildren(hwnd, hitem, recurse)
        send_treeview_message(hwnd, :SORTCHILDREN, wparam: recurse, lparam: hitem)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_ensurevisible
      #define TreeView_EnsureVisible(hwnd, hitem) (BOOL)SNDMSG((hwnd), TVM_ENSUREVISIBLE, 0, (LPARAM)(HTREEITEM)(hitem))
      def TreeView_EnsureVisible(hwnd, hitem) send_treeview_message(hwnd, :ENSUREVISIBLE, lparam: hitem) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_sortchildrencb
      #define TreeView_SortChildrenCB(hwnd, psort, recurse) (BOOL)SNDMSG((hwnd), TVM_SORTCHILDRENCB, (WPARAM)(recurse), (LPARAM)(LPTV_SORTCB)(psort))
      def TreeView_SortChildrenCB(hwnd, psort, recurse)
        send_treeview_message(hwnd, :SORTCHILDRENCB, wparam: recurse, lparam: psort)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_endeditlabelnow
      #define TreeView_EndEditLabelNow(hwnd, fCancel) (BOOL)SNDMSG((hwnd), TVM_ENDEDITLABELNOW, (WPARAM)(fCancel), 0)
      def TreeView_EndEditLabelNow(hwnd, fCancel) send_treeview_message(hwnd, :ENDEDITLABELNOW, wparam: fCancel) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_settooltips
      #define TreeView_SetToolTips(hwnd,  hwndTT) (HWND)SNDMSG((hwnd), TVM_SETTOOLTIPS, (WPARAM)(hwndTT), 0)
      def TreeView_SetToolTips(hwnd, hwndTT) send_treeview_message(hwnd, TVM_SETTOOLTIPS, wparam: hwndTT) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_gettooltips
      #define TreeView_GetToolTips(hwnd) (HWND)SNDMSG((hwnd), TVM_GETTOOLTIPS, 0, 0)
      def TreeView_GetToolTips(hwnd) send_treeview_message(hwnd, :GETTOOLTIPS) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getisearchstring
      #define TreeView_GetISearchString(hwndTV, lpsz)  (BOOL)SNDMSG((hwndTV), TVM_GETISEARCHSTRING, 0, (LPARAM)(LPTSTR)(lpsz))
      def TreeView_GetISearchString(hwndTV, lpsz) send_treeview_message(hwndTV, :GETISEARCHSTRING, lparam: lpsz) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setinsertmark
      #define TreeView_SetInsertMark(hwnd, hItem, fAfter) (BOOL)SNDMSG((hwnd), TVM_SETINSERTMARK, (WPARAM) (fAfter), (LPARAM) (hItem))
      def TreeView_SetInsertMark(hwnd, hItem, fAfter)
        send_treeview_message(hwnd, :SETINSERTMARK, wparam: fAfter, lparam: hItem)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setunicodeformat
      #define TreeView_SetUnicodeFormat(hwnd, fUnicode) (BOOL)SNDMSG((hwnd), TVM_SETUNICODEFORMAT, (WPARAM)(fUnicode), 0)
      def TreeView_SetUnicodeFormat(hwnd, fUnicode) send_treeview_message(hwnd, :SETUNICODEFORMAT, wparam: fUnicode)end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getunicodeformat
      #define TreeView_GetUnicodeFormat(hwnd) (BOOL)SNDMSG((hwnd), TVM_GETUNICODEFORMAT, 0, 0)
      def TreeView_GetUnicodeFormat(hwnd) send_treeview_message(hwnd, :GETUNICODEFORMAT) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setitemheight
      #define TreeView_SetItemHeight(hwnd, iHeight) (int)SNDMSG((hwnd), TVM_SETITEMHEIGHT, (WPARAM)(iHeight), 0)
      def TreeView_SetItemHeight(hwnd, iHeight) send_treeview_message(hwnd, :SETITEMHEIGHT, wparam: iHeight) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getitemheight
      #define TreeView_GetItemHeight(hwnd) (int)SNDMSG((hwnd), TVM_GETITEMHEIGHT, 0, 0)
      def TreeView_GetItemHeight(hwnd) send_treeview_message(hwnd, :GETITEMHEIGHT) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setbkcolor
      #define TreeView_SetBkColor(hwnd, clr) (COLORREF)SNDMSG((hwnd), TVM_SETBKCOLOR, 0, (LPARAM)(clr))
      def TreeView_SetBkColor(hwnd, clr) send_treeview_message(hwnd, :SETBKCOLOR, lparam: clr) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_settextcolor
      #define TreeView_SetTextColor(hwnd, clr) (COLORREF)SNDMSG((hwnd), TVM_SETTEXTCOLOR, 0, (LPARAM)(clr))
      def TreeView_SetTextColor(hwnd, clr) send_treeview_message(hwnd, :SETTEXTCOLOR, lparam: clr) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getbkcolor
      #define TreeView_GetBkColor(hwnd) (COLORREF)SNDMSG((hwnd), TVM_GETBKCOLOR, 0, 0)
      def TreeView_GetBkColor(hwnd) send_treeview_message(hwnd, :GETBKCOLOR) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_gettextcolor
      #define TreeView_GetTextColor(hwnd) (COLORREF)SNDMSG((hwnd), TVM_GETTEXTCOLOR, 0, 0)
      def TreeView_GetTextColor(hwnd) send_treeview_message(hwnd, :GETTEXTCOLOR) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setscrolltime
      #define TreeView_SetScrollTime(hwnd, uTime) (UINT)SNDMSG((hwnd), TVM_SETSCROLLTIME, uTime, 0)
      def TreeView_SetScrollTime(hwnd, uTime) send_treeview_message(hwnd, :SETSCROLLTIME, wparam: uTime) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getscrolltime
      #define TreeView_GetScrollTime(hwnd) (UINT)SNDMSG((hwnd), TVM_GETSCROLLTIME, 0, 0)
      def TreeView_GetScrollTime(hwnd) send_treeview_message(hwnd, :GETSCROLLTIME) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setinsertmarkcolor
      #define TreeView_SetInsertMarkColor(hwnd, clr) (COLORREF)SNDMSG((hwnd), TVM_SETINSERTMARKCOLOR, 0, (LPARAM)(clr))
      def TreeView_SetInsertMarkColor(hwnd, clr) send_treeview_message(hwnd, :SETINSERTMARKCOLOR, lparam: clr) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getinsertmarkcolor
      #define TreeView_GetInsertMarkColor(hwnd) (COLORREF)SNDMSG((hwnd), TVM_GETINSERTMARKCOLOR, 0, 0)
      def TreeView_GetInsertMarkColor(hwnd) send_treeview_message(hwnd, :GETINSERTMARKCOLOR) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setborder
      #define TreeView_SetBorder(hwnd, dwFlags, xBorder, yBorder) (int)SNDMSG((hwnd), TVM_SETBORDER, (WPARAM)(dwFlags), MAKELPARAM(xBorder, yBorder))
      def TreeView_SetBorder(hwnd,  dwFlags, xBorder, yBorder)
        send_treeview_message(hwnd, :SETBORDER, wparam: dwFlags, lparam: MAKELPARAM(xBorder, yBorder))
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setitemstate
      #define TreeView_SetItemState(hwndTV, hti, data, _mask) \
      # {
      #     TVITEM _ms_TVi;\
      #     _ms_TVi.mask = TVIF_STATE; \
      #     _ms_TVi.hItem = (hti); \
      #     _ms_TVi.stateMask = (_mask);\
      #     _ms_TVi.state = (data);\
      #     SNDMSG((hwndTV), TVM_SETITEM, 0, (LPARAM)(TV_ITEM *)&_ms_TVi);\
      # }
      def TreeView_SetItemState(hwndTV, hti, data, _mask)
          _ms_TVi = TVITEM.new
          _ms_TVi.mask = TVIF_STATE
          _ms_TVi.hItem = hti
          _ms_TVi.stateMask = _mask
          _ms_TVi.state = data
          send_treeview_message(hwndTV, :SETITEM, lparam: _ms_TVi.pointer)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setcheckstate
      #define TreeView_SetCheckState(hwndTV, hti, fCheck) TreeView_SetItemState(hwndTV, hti, INDEXTOSTATEIMAGEMASK((fCheck)?2:1), TVIS_STATEIMAGEMASK)
      def TreeView_SetCheckState(hwndTV, hti, fCheck)
        TreeView_SetItemState(hwndTV, hti, INDEXTOSTATEIMAGEMASK(fCheck ? 2 : 1), TreeViewItemState[:STATEIMAGEMASK])
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getitemstate
      #define TreeView_GetItemState(hwndTV, hti, mask) (UINT)SNDMSG((hwndTV), TVM_GETITEMSTATE, (WPARAM)(hti), (LPARAM)(mask))
      def TreeView_GetItemState(hwndTV, hti, mask)
        send_treeview_message(hwndTV, :GETITEMSTATE, wparam: hti, lparam: mask)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getcheckstate
      #define TreeView_GetCheckState(hwndTV, hti) ((((UINT)(SNDMSG((hwndTV), TVM_GETITEMSTATE, (WPARAM)(hti), TVIS_STATEIMAGEMASK))) >> 12) -1)
      def TreeView_GetCheckState(hwndTV, hti)
        (send_treeview_message(hwndTV, :GETITEMSTATE, wparam: hti, lparam: TreeViewItemState[:STATEIMAGEMASK]) >> 12) - 1
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setlinecolor
      #define TreeView_SetLineColor(hwnd, clr) (COLORREF)SNDMSG((hwnd), TVM_SETLINECOLOR, 0, (LPARAM)(clr))
      def TreeView_SetLineColor(hwnd, clr) send_treeview_message(hwnd, :SETLINECOLOR, lparam: clr) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getlinecolor
      #define TreeView_GetLineColor(hwnd) (COLORREF)SNDMSG((hwnd), TVM_GETLINECOLOR, 0, 0)
      def TreeView_GetLineColor(hwnd) send_treeview_message(hwnd, :GETLINECOLOR) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_sethot
      #define TreeView_SetHot(hwnd, hitem) SNDMSG((hwnd), TVM_SETHOT, 0, (LPARAM)(hitem))
      def TreeView_SetHot(hwnd, hitem) send_treeview_message(hwnd, :SETHOT, lparam: hitem) end

      if WINDOWS_VERSION >= :xp
        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_mapaccidtohtreeitem
        #define TreeView_MapAccIDToHTREEITEM(hwnd, id) (HTREEITEM)SNDMSG((hwnd), TVM_MAPACCIDTOHTREEITEM, id, 0)
        def TreeView_MapAccIDToHTREEITEM(hwnd, id) send_treeview_message(hwnd, :MAPACCIDTOHTREEITEM, wparam: id) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_maphtreeitemtoaccid
        #define TreeView_MapHTREEITEMToAccID(hwnd, htreeitem) (UINT)SNDMSG((hwnd), TVM_MAPHTREEITEMTOACCID, (WPARAM)(htreeitem), 0)
        def TreeView_MapHTREEITEMToAccID(hwnd, htreeitem)
          send_treeview_message(hwnd, :MAPHTREEITEMTOACCID, wparam: htreeitem)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setextendedstyle
        #define TreeView_SetExtendedStyle(hwnd, dw, mask) (DWORD)SNDMSG((hwnd), TVM_SETEXTENDEDSTYLE, mask, dw)
        def TreeView_SetExtendedStyle(hwnd, dw, mask)
          send_treeview_message(hwnd, :SETEXTENDEDSTYLE, wparam: mask, lparam: dw)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getextendedstyle
        #define TreeView_GetExtendedStyle(hwnd) (DWORD)SNDMSG((hwnd), TVM_GETEXTENDEDSTYLE, 0, 0)
        def TreeView_GetExtendedStyle(hwnd) send_treeview_message(hwnd, :GETEXTENDEDSTYLE) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_setautoscrollinfo
        #define TreeView_SetAutoScrollInfo(hwnd, uPixPerSec, uUpdateTime)  SNDMSG((hwnd), TVM_SETAUTOSCROLLINFO, (WPARAM)(uPixPerSec), (LPARAM)(uUpdateTime))
        def TreeView_SetAutoScrollInfo(hwnd, uPixPerSec, uUpdateTime)
          send_treeview_message(hwnd, :SETAUTOSCROLLINFO, lparam: uPixPerSec, wparam: uUpdateTime)
        end

        if WINDOWS_VERSION >= :vista
          # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getnextselected
          #define TreeView_GetNextSelected(hwnd, hitem) TreeView_GetNextItem(hwnd, hitem, TVGN_NEXTSELECTED)
          def TreeView_GetNextSelected(hwnd, hitem)
            TreeView_GetNextItem(hwnd, hitem, TreeViewGetNextItem[:NEXTSELECTED])
          end

          # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getselectedcount
          #define TreeView_GetSelectedCount(hwnd)  (DWORD)SNDMSG((hwnd), TVM_GETSELECTEDCOUNT, 0, 0)
          def TreeView_GetSelectedCount(hwnd) send_treeview_message(hwnd, :GETSELECTEDCOUNT) end

          # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_showinfotip
          #define TreeView_ShowInfoTip(hwnd, hitem) (DWORD)SNDMSG((hwnd), TVM_SHOWINFOTIP, 0, (LPARAM)(hitem))
          def TreeView_ShowInfoTip(hwnd, hitem) send_treeview_message(hwnd, :SHOWINFOTIP, lparam: hitem) end

          # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-treeview_getitempartrect
          #define TreeView_GetItemPartRect(hwnd, hitem, prc, partid) \
          # {
          #     TVGETITEMPARTRECTINFO info; \
          #     info.hti = (hitem); \
          #     info.prc = (prc); \
          #     info.partID = (partid); \TreeView_GetItemRect
          #     (BOOL)SNDMSG((hwnd), TVM_GETITEMPARTRECT, 0, (LPARAM)&info); \
          # }
          def TreeView_GetItemPartRect(hwnd, hitem, prc, partid)
            info = TVGETITEMPARTRECTINFO.new
            info.hti = hitem
            info.prc = prc
            info.partID = partid
            send_treeview_message(hwnd, :GETITEMPARTRECT, lparam: info.pointer)
          end
        end
      end

      private def send_treeview_message(hwnd, message, wparam: 0, lparam: 0)
        User32.SendMessage(hwnd, TreeViewMessage[message], wparam, lparam)
      end
    end
  end
end
