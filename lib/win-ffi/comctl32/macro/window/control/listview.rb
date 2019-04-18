require 'win-ffi/core/struct/point'
require 'win-ffi/user32/function/window/message'

require_relative '../../../../../win-ffi/comctl32/enum/window/control/listview/message'
require_relative '../../../../../win-ffi/comctl32/enum/window/control/listview/item_state'
require_relative '../../../../../win-ffi/comctl32/enum/window/control/listview/get_sub_item_rect'
require_relative '../../../enum/window/control/listview/get_sub_item_rect'

require_relative '../../../struct/window/control/listview/item'
require_relative '../../../struct/window/control/listview/group'

module WinFFI
  module Comctl32
    #define INDEXTOSTATEIMAGEMASK(i) ((i) << 12)
    def INDEXTOSTATEIMAGEMASK(i)
      i << 12
    end

    I_INDENTCALLBACK = -1
    I_IMAGECALLBACK  = -1
    I_IMAGENONE      = -2

    class << self
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setunicodeformat
      #define ListView_SetUnicodeFormat(hwnd, fUnicode) (BOOL)SNDMSG((hwnd), LVM_SETUNICODEFORMAT, (WPARAM)(fUnicode), 0)
      def ListView_SetUnicodeFormat(hwnd, fUnicode) send_listview_message(hwnd, :SETUNICODEFORMAT, wparam: fUnicode) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getunicodeformat
      #define ListView_GetUnicodeFormat(hwnd) (BOOL)SNDMSG((hwnd), LVM_GETUNICODEFORMAT, 0, 0)
      def ListView_GetUnicodeFormat(hwnd) send_listview_message(hwnd, :GETUNICODEFORMAT) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getbkcolor
      #define ListView_GetBkColor(hwnd) (COLORREF)SNDMSG((hwnd), LVM_GETBKCOLOR, 0, 0L)
      def ListView_GetBkColor(hwnd) send_listview_message(hwnd, :GETBKCOLOR) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setbkcolor
      #define ListView_SetBkColor(hwnd, clrBk) (BOOL)SNDMSG((hwnd), LVM_SETBKCOLOR, 0, (LPARAM)(COLORREF)(clrBk))
      def ListView_SetBkColor(hwnd, clrBk) send_listview_message(hwnd, :SETBKCOLOR, lparam: clrBk) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getimagelist
      #define ListView_GetImageList(hwnd, iImageList) (HIMAGELIST)SNDMSG((hwnd), LVM_GETIMAGELIST, (WPARAM)(INT)(iImageList), 0L)
      def ListView_GetImageList(hwnd, iImageList) send_listview_message(hwnd, :GETIMAGELIST, wparam: iImageList) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setimagelist
      #define ListView_SetImageList(hwnd, himl, iImageList) (HIMAGELIST)SNDMSG((hwnd), LVM_SETIMAGELIST, (WPARAM)(iImageList), (LPARAM)(HIMAGELIST)(himl))
      def ListView_SetImageList(hwnd, himl, iImageList)
        send_listview_message(hwnd, :SETIMAGELIST, wparam: iImageList, lparam: himl)
      end

      #define ListView_GetItemCount(hwnd) (int)SNDMSG((hwnd), LVM_GETITEMCOUNT, 0, 0L)
      def ListView_GetItemCount(hwnd) send_listview_message(hwnd, :GETITEMCOUNT) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getitem
      #define ListView_GetItem(hwnd, pitem) (BOOL)SNDMSG((hwnd), LVM_GETITEM, 0, (LPARAM)(LV_ITEM *)(pitem))
      def ListView_GetItem(hwnd, pitem) send_listview_message(hwnd, :GETITEM, lparam: pitem) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setitem
      #define ListView_SetItem(hwnd, pitem) (BOOL)SNDMSG((hwnd), LVM_SETITEM, 0, (LPARAM)(const LV_ITEM *)(pitem))
      def ListView_SetItem(hwnd, pitem) send_listview_message(hwnd, :SETITEM, lparam: pitem) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_insertitem
      #define ListView_InsertItem(hwnd, pitem) (int)SNDMSG((hwnd), LVM_INSERTITEM, 0, (LPARAM)(const LV_ITEM *)(pitem))
      def ListView_InsertItem(hwnd, pitem) send_listview_message(hwnd, :INSERTITEM, lparam: pitem) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_deleteitem
      #define ListView_DeleteItem(hwnd, i) (BOOL)SNDMSG((hwnd), LVM_DELETEITEM, (WPARAM)(int)(i), 0L)
      def ListView_DeleteItem(hwnd, i) send_listview_message(hwnd, :DELETEITEM, wparam: i) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_deleteallitems
      #define ListView_DeleteAllItems(hwnd) (BOOL)SNDMSG((hwnd), LVM_DELETEALLITEMS, 0, 0L)
      def ListView_DeleteAllItems(hwnd) send_listview_message(hwnd, :DELETEALLITEMS) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getcallbackmask
      #define ListView_GetCallbackMask(hwnd) (BOOL)SNDMSG((hwnd), LVM_GETCALLBACKMASK, 0, 0)
      def ListView_GetCallbackMask(hwnd) send_listview_message(hwnd, :GETCALLBACKMASK) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setcallbackmask
      #define ListView_SetCallbackMask(hwnd, mask) (BOOL)SNDMSG((hwnd), LVM_SETCALLBACKMASK, (WPARAM)(UINT)(mask), 0)
      def ListView_SetCallbackMask(hwnd, mask) send_listview_message(hwnd, :SETCALLBACKMASK, wparam: mask) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getnextitem
      #define ListView_GetNextItem(hwnd, i, flags) (int)SNDMSG((hwnd), LVM_GETNEXTITEM, (WPARAM)(int)(i), MAKELPARAM((flags), 0))
      def ListView_GetNextItem(hwnd, i, flags)
        send_listview_message(hwnd, :GETNEXTITEM, wparam: i, lparam: MAKELPARAM(flags, 0))
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_finditem
      #define ListView_FindItem(hwnd, iStart, plvfi) (int)SNDMSG((hwnd), LVM_FINDITEM, (WPARAM)(int)(iStart), (LPARAM)(const LV_FINDINFO *)(plvfi))
      def ListView_FindItem(hwnd, iStart, plvfi)
        send_listview_message(hwnd, :FINDITEM, wparam: iStart, lparam: plvfi)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getitemrect
      #define ListView_GetItemRect(hwnd, i, prc, code) (BOOL)SNDMSG((hwnd), LVM_GETITEMRECT, (WPARAM)(int)(i), ((prc) ? \
      # (((RECT *)(prc))->left = (code),(LPARAM)(RECT *)(prc)) : (LPARAM)(RECT *)NULL))
      def ListView_GetItemRect(hwnd, i, prc, code)
        prc = if !prc.null?
          prc.left = ListViewGetSubItemRect[code]
          prc
        else
          FFI::Pointer::NULL
        end
        send_listview_message(hwnd, :GETITEMRECT, wparam: i, lparam: prc)
      end

      # https://duckduckgo.com/?q=ListView_SetItemPosition&atb=v133-4&ia=web
      #define ListView_SetItemPosition(hwndLV, i, x, y) (BOOL)SNDMSG((hwndLV), LVM_SETITEMPOSITION, (WPARAM)(int)(i), MAKELPARAM((x), (y)))
      def ListView_SetItemPosition(hwndLV, i, x, y)
        send_listview_message(hwndLV, :SETITEMPOSITION, wparam: i, lparam: MAKELPARAM(x, y))
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getitemposition
      #define ListView_GetItemPosition(hwndLV, i, ppt) (BOOL)SNDMSG((hwndLV), LVM_GETITEMPOSITION, (WPARAM)(int)(i), (LPARAM)(POINT *)(ppt))
      def ListView_GetItemPosition(hwndLV, i, ppt)
        send_listview_message(hwndLV, :GETITEMPOSITION, wparam: i, lparam: ppt)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getstringwidth
      #define ListView_GetStringWidth(hwndLV, psz) (int)SNDMSG((hwndLV), LVM_GETSTRINGWIDTH, 0, (LPARAM)(LPCTSTR)(psz))
      def ListView_GetStringWidth(hwndLV, psz) send_listview_message(hwndLV, :GETSTRINGWIDTH, param: psz) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_hittest
      #define ListView_HitTest(hwndLV, pinfo) (int)SNDMSG((hwndLV), LVM_HITTEST, 0, (LPARAM)(LV_HITTESTINFO *)(pinfo))
      def ListView_HitTest(hwndLV, pinfo) send_listview_message(hwndLV, :HITTEST, lparam: pinfo) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_hittestex
      #define ListView_HitTestEx(hwndLV, pinfo) (int)SNDMSG((hwndLV), LVM_HITTEST, (WPARAM)-1, (LPARAM)(LV_HITTESTINFO *)(pinfo))
      def ListView_HitTestEx(hwndLV, pinfo) send_listview_message(hwndLV, :HITTEST, wparam: -1, lparam: pinfo) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_ensurevisible
      #define ListView_EnsureVisible(hwndLV, i, fPartialOK) (BOOL)SNDMSG((hwndLV), LVM_ENSUREVISIBLE, (WPARAM)(int)(i), MAKELPARAM((fPartialOK), 0))
      def ListView_EnsureVisible(hwndLV, i, fPartialOK)
        send_listview_message(hwndLV, :ENSUREVISIBLE, wparam: i, lparam: MAKELPARAM(fPartialOK, 0))
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_scroll
      #define ListView_Scroll(hwndLV, dx, dy) (BOOL)SNDMSG((hwndLV), LVM_SCROLL, (WPARAM)(int)(dx), (LPARAM)(int)(dy))
      def ListView_Scroll(hwndLV, dx, dy) send_listview_message(hwndLV, :SCROLL, wparam: dx, lparam: dy) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_redrawitems
      #define ListView_RedrawItems(hwndLV, iFirst, iLast) (BOOL)SNDMSG((hwndLV), LVM_REDRAWITEMS, (WPARAM)(int)(iFirst), (LPARAM)(int)(iLast))
      def ListView_RedrawItems(hwndLV, iFirst, iLast)
        send_listview_message(hwndLV, :REDRAWITEMS, wparam: iFirst, lparam: iLast)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_arrange
      #define ListView_Arrange(hwndLV, code) (BOOL)SNDMSG((hwndLV), LVM_ARRANGE, (WPARAM)(UINT)(code), 0L)
      def ListView_Arrange(hwndLV, code) send_listview_message(hwndLV, :ARRANGE, wparam: code) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_editlabel
      #define ListView_EditLabel(hwndLV, i) (HWND)SNDMSG((hwndLV), LVM_EDITLABEL, (WPARAM)(int)(i), 0L)
      def ListView_EditLabel(hwndLV, i) send_listview_message(hwndLV, :EDITLABEL, wparam: i) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_geteditcontrol
      #define ListView_GetEditControl(hwndLV) (HWND)SNDMSG((hwndLV), LVM_GETEDITCONTROL, 0, 0L)
      def ListView_GetEditControl(hwndLV) send_listview_message(hwndLV, :GETEDITCONTROL) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getcolumn
      #define ListView_GetColumn(hwnd, iCol, pcol) (BOOL)SNDMSG((hwnd), LVM_GETCOLUMN, (WPARAM)(int)(iCol), (LPARAM)(LV_COLUMN *)(pcol))
      def ListView_GetColumn(hwnd, iCol, pcol)
        send_listview_message(hwnd, :GETCOLUMN, wparam: iCol, lparam: pcol)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setcolumn
      #define ListView_SetColumn(hwnd, iCol, pcol) (BOOL)SNDMSG((hwnd), LVM_SETCOLUMN, (WPARAM)(int)(iCol), (LPARAM)(const LV_COLUMN *)(pcol))
      def ListView_SetColumn(hwnd, iCol, pcol)
        send_listview_message(hwnd, :SETCOLUMN, wparam: iCol, lparam: pcol)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_insertcolumn
      #define ListView_InsertColumn(hwnd, iCol, pcol) (int)SNDMSG((hwnd), LVM_INSERTCOLUMN, (WPARAM)(int)(iCol), (LPARAM)(const LV_COLUMN *)(pcol))
      def ListView_InsertColumn(hwnd, iCol, pcol)
        send_listview_message(hwnd, :INSERTCOLUMN, wparam: iCol, lparam: pcol)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_deletecolumn
      #define ListView_DeleteColumn(hwnd, iCol) (BOOL)SNDMSG((hwnd), LVM_DELETECOLUMN, (WPARAM)(int)(iCol), 0)
      def ListView_DeleteColumn(hwnd, iCol) send_listview_message(hwnd, :DELETECOLUMN, wparam: iCol) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getcolumnwidth
      #define ListView_GetColumnWidth(hwnd, iCol) (int)SNDMSG((hwnd), LVM_GETCOLUMNWIDTH, (WPARAM)(int)(iCol), 0)
      def ListView_GetColumnWidth(hwnd, iCol) send_listview_message(hwnd, :GETCOLUMNWIDTH, wparam: iCol) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setcolumnwidth
      #define ListView_SetColumnWidth(hwnd, iCol, cx) (BOOL)SNDMSG((hwnd), LVM_SETCOLUMNWIDTH, (WPARAM)(int)(iCol), MAKELPARAM((cx), 0))
      def ListView_SetColumnWidth(hwnd, iCol, cx)
        send_listview_message(hwnd, :SETCOLUMNWIDTH, wparam: iCol, lparam: MAKELPARAM(cx, 0))
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getheader
      #define ListView_GetHeader(hwnd) (HWND)SNDMSG((hwnd), LVM_GETHEADER, 0, 0L)
      def ListView_GetHeader(hwnd) send_listview_message(hwnd, :GETHEADER) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_createdragimage
      #define ListView_CreateDragImage(hwnd, i, lpptUpLeft) (HIMAGELIST)SNDMSG((hwnd), LVM_CREATEDRAGIMAGE, (WPARAM)(int)(i), (LPARAM)(LPPOINT)(lpptUpLeft))
      def ListView_CreateDragImage(hwnd, i, lpptUpLeft)
        send_listview_message(hwnd, :CREATEDRAGIMAGE, wparam: i, lparam: lpptUpLeft)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getviewrect
      #define ListView_GetViewRect(hwnd, prc) (BOOL)SNDMSG((hwnd), LVM_GETVIEWRECT, 0, (LPARAM)(RECT *)(prc))
      def ListView_GetViewRect(hwnd, prc) send_listview_message(hwnd, :GETVIEWRECT, lparam: prc) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_gettextcolor
      #define ListView_GetTextColor(hwnd) (COLORREF)SNDMSG((hwnd), LVM_GETTEXTCOLOR, 0, 0L)
      def ListView_GetTextColor(hwnd) send_listview_message(hwnd, :GETTEXTCOLOR) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_settextcolor
      #define ListView_SetTextColor(hwnd, clrText) (BOOL)SNDMSG((hwnd), LVM_SETTEXTCOLOR, 0, (LPARAM)(COLORREF)(clrText))
      def ListView_SetTextColor(hwnd, clrText) send_listview_message(hwnd, :SETTEXTCOLOR, lparam: clrText) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_gettextbkcolor
      #define ListView_GetTextBkColor(hwnd) (COLORREF)SNDMSG((hwnd), LVM_GETTEXTBKCOLOR, 0, 0L)
      def ListView_GetTextBkColor(hwnd) send_listview_message(hwnd, :GETTEXTBKCOLOR) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_settextbkcolor
      #define ListView_SetTextBkColor(hwnd, clrTextBk) (BOOL)SNDMSG((hwnd), LVM_SETTEXTBKCOLOR, 0, (LPARAM)(COLORREF)(clrTextBk))
      def ListView_SetTextBkColor(hwnd, clrTextBk) send_listview_message(hwnd, :SETTEXTBKCOLOR, lparam: clrTextBk) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_gettopindex
      #define ListView_GetTopIndex(hwndLV) (int)SNDMSG((hwndLV), LVM_GETTOPINDEX, 0, 0)
      def ListView_GetTopIndex(hwndLV) send_listview_message(hwndLV, :GETTOPINDEX) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getcountperpage
      #define ListView_GetCountPerPage(hwndLV) (int)SNDMSG((hwndLV), LVM_GETCOUNTPERPAGE, 0, 0)
      def ListView_GetCountPerPage(hwndLV) send_listview_message(hwndLV, :GETCOUNTPERPAGE) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getorigin
      #define ListView_GetOrigin(hwndLV, ppt) (BOOL)SNDMSG((hwndLV), LVM_GETORIGIN, (WPARAM)0, (LPARAM)(POINT *)(ppt))
      def ListView_GetOrigin(hwndLV, ppt) send_listview_message(hwndLV, :GETORIGIN, lparam: ppt) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_update
      #define ListView_Update(hwndLV, i) (BOOL)SNDMSG((hwndLV), LVM_UPDATE, (WPARAM)(i), 0L)
      def ListView_Update(hwndLV, i) send_listview_message(hwndLV, :UPDATE, wparam: i) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setitemstate
      # #define ListView_SetItemState(hwndLV, i, data, mask)
      #{ LV_ITEM _macro_lvi; _macro_lvi.stateMask = (mask);
      # _macro_lvi.state = (data);
      # SNDMSG((hwndLV), LVM_SETITEMSTATE, (WPARAM)(i), (LPARAM)(LV_ITEM *)&_macro_lvi); }
      def ListView_SetItemState(hwndLV, i, data, mask)
        macro_lvi = LVITEM.new
        macro_lvi.stateMask = mask
        macro_lvi.state = data
        send_listview_message(hwndLV, :SETITEMSTATE, wparam: i, lparam: macro_lvi.address)
      end

      #define ListView_SetCheckState(hwndLV, i, fCheck) ListView_SetItemState(hwndLV, i, INDEXTOSTATEIMAGEMASK((fCheck)?2:1), LVIS_STATEIMAGEMASK)
      def ListView_SetCheckState(hwndLV, i, fCheck)
        ListView_SetItemState(hwndLV, i, INDEXTOSTATEIMAGEMASK(fCheck ? 2 : 1), ListViewItemState[:STATEIMAGEMASK])
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getitemstate
      #define ListView_GetItemState(hwndLV, i, mask) (UINT)SNDMSG((hwndLV), LVM_GETITEMSTATE, (WPARAM)(i), (LPARAM)(mask))
      def ListView_GetItemState(hwndLV, i, mask)
        send_listview_message(hwndLV, :GETITEMSTATE, wparam: i, lparam: mask)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getcheckstate
      #define ListView_GetCheckState(hwndLV, i) ((((UINT)(SNDMSG((hwndLV), LVM_GETITEMSTATE, (WPARAM)(i), LVIS_STATEIMAGEMASK))) >> 12) -1)
      def ListView_GetCheckState(hwndLV, i)
        (send_listview_message(hwndLV, :GETITEMSTATE, wparam: i, lparam: ListViewItemState[:STATEIMAGEMASK]) >> 12) - 1
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getitemtext
      #define ListView_GetItemText(hwndLV, i, iSubItem_, pszText_, cchTextMax_) {
      #   LV_ITEM _macro_lvi;
      #   _macro_lvi.iSubItem = (iSubItem_);
      #   _macro_lvi.cchTextMax = (cchTextMax_);
      #   _macro_lvi.pszText = (pszText_);
      #   SNDMSG((hwndLV), LVM_GETITEMTEXT, (WPARAM)(i), (LPARAM)(LV_ITEM *)&_macro_lvi)
      # }
      def ListView_GetItemText(hwndLV, i, iSubItem_, pszText_, cchTextMax_)
        _macro_lvi = LVITEM.new
        _macro_lvi.iSubItem = iSubItem_
        _macro_lvi.cchTextMax = cchTextMax_
        _macro_lvi.pszText = pszText_
        send_listview_message(hwndLV, :GETITEMTEXT, wparam: i, lparam: _macro_lvi.address)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setitemtext
      #define ListView_SetItemText(hwndLV, i, iSubItem_, pszText_) {
      #   LV_ITEM _macro_lvi; _macro_lvi.iSubItem = (iSubItem_);
      #   _macro_lvi.pszText = (pszText_);
      #   SNDMSG((hwndLV), LVM_SETITEMTEXT, (WPARAM)(i), (LPARAM)(LV_ITEM *)&_macro_lvi);
      # }
      def ListView_SetItemText(hwndLV, i, iSubItem_, pszText_)
        _macro_lvi = LVITEM.new
        _macro_lvi.iSubItem = iSubItem_
        _macro_lvi.pszText = pszText_
        send_listview_message(hwndLV, :SETITEMTEXT, wparam: i, lparam: macro_lvi.address)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setitemcount
      #define ListView_SetItemCount(hwndLV, cItems) SNDMSG((hwndLV), LVM_SETITEMCOUNT, (WPARAM)(cItems), 0)
      def ListView_SetItemCount(hwndLV, cItems)
        send_listview_message(hwndLV, :SETITEMCOUNT, wparam: cItems)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setitemcountex
      #define ListView_SetItemCountEx(hwndLV, cItems, dwFlags) SNDMSG((hwndLV), LVM_SETITEMCOUNT, (WPARAM)(cItems),
      #   (LPARAM)(dwFlags))
      def ListView_SetItemCountEx(hwndLV, cItems, dwFlags)
        send_listview_message(hwndLV, :SETITEMCOUNT, wparam: cItems, lparam: dwFlags)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_sortitems
      #define ListView_SortItems(hwndLV, _pfnCompare, _lPrm) (BOOL)SNDMSG((hwndLV), LVM_SORTITEMS,
      #   (WPARAM)(LPARAM)(_lPrm), (LPARAM)(PFNLVCOMPARE)(_pfnCompare))
      def ListView_SortItems(hwndLV, _pfnCompare, _lPrm)
        send_listview_message(hwndLV, :SORTITEMS, wparam: _lPrm, lparam: _pfnCompare)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setitemposition32
      #define ListView_SetItemPosition32(hwndLV, i, x0, y0)
      #   POINT ptNewPos; ptNewPos.x = (x0); ptNewPos.y = (y0);
      #   SNDMSG((hwndLV), LVM_SETITEMPOSITION32, (WPARAM)(int)(i), (LPARAM)&ptNewPos);
      def ListView_SetItemPosition32(hwndLV, i, x0, y0)
        ptNewPos = POINT.new
        ptNewPos.x = x0
        ptNewPos.y = y0
        send_listview_message(hwndLV, :SETITEMPOSITION32, wparam: i, lparam: ptNewPos.address)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getselectedcount
      #define ListView_GetSelectedCount(hwndLV) (UINT)SNDMSG((hwndLV), LVM_GETSELECTEDCOUNT, 0, 0L)
      def ListView_GetSelectedCount(hwndLV)
        send_listview_message(hwndLV, :GETSELECTEDCOUNT)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getitemspacing
      #define ListView_GetItemSpacing(hwndLV, fSmall) (DWORD)SNDMSG((hwndLV), LVM_GETITEMSPACING, fSmall, 0L)
      def ListView_GetItemSpacing(hwndLV, fSmall)
        send_listview_message(hwndLV, :GETITEMSPACING, wparam: fSmall)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getisearchstring
      #define ListView_GetISearchString(hwndLV, lpsz)
      #   (BOOL)SNDMSG((hwndLV), LVM_GETISEARCHSTRING, 0, (LPARAM)(LPTSTR)(lpsz))
      def ListView_GetISearchString(hwndLV, lpsz)
        send_listview_message(hwndLV, :GETISEARCHSTRING, lparam: lpsz)
      end

      # -1 for cx and cy means we'll use the default (system settings)
      # 0 for cx or cy means use the current setting (allows you to change just one param)
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_seticonspacing
      #define ListView_SetIconSpacing(hwndLV, cx, cy) (DWORD)SNDMSG((hwndLV), LVM_SETICONSPACING, 0, MAKELONG(cx,cy))
      def ListView_SetIconSpacing(hwndLV, cx, cy)
        send_listview_message(hwndLV, :SETICONSPACING, lparam: MAKELONG(cx,cy))
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setextendedlistviewstyle
      #define ListView_SetExtendedListViewStyle(hwndLV, dw) (DWORD)SNDMSG((hwndLV), LVM_SETEXTENDEDLISTVIEWSTYLE, 0, dw)
      def ListView_SetExtendedListViewStyle(hwndLV, dw)
        send_listview_message(hwndLV, :SETEXTENDEDLISTVIEWSTYLE, lparam: dw)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setextendedlistviewstyleex
      #define ListView_SetExtendedListViewStyleEx(hwndLV, dwMask, dw) (DWORD)SNDMSG((hwndLV), LVM_SETEXTENDEDLISTVIEWSTYLE, dwMask, dw)
      def ListView_SetExtendedListViewStyleEx(hwndLV, dwMask, dw)
        send_listview_message(hwndLV, :SETEXTENDEDLISTVIEWSTYLE, wparam: dwMask, lparam: dw)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getextendedlistviewstyle
      #define ListView_GetExtendedListViewStyle(hwndLV) (DWORD)SNDMSG((hwndLV), LVM_GETEXTENDEDLISTVIEWSTYLE, 0, 0)
      def ListView_GetExtendedListViewStyle(hwndLV)
        send_listview_message(hwndLV, :GETEXTENDEDLISTVIEWSTYLE)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getsubitemrect
      #define ListView_GetSubItemRect(hwnd, iItem, iSubItem, code, prc)
      #   (BOOL)SNDMSG((hwnd), LVM_GETSUBITEMRECT, (WPARAM)(int)(iItem), ((prc) ? ((((LPRECT)(prc))->top = (iSubItem)),
      #      (((LPRECT)(prc))->left = (code)), (LPARAM)(prc)) : (LPARAM)(LPRECT)NULL))
      def ListView_GetSubItemRect(hwnd, iItem, iSubItem, code, prc)
        prc = if prc
          prc.top = iSubItem
          prc.left = code
          prc
        else
          FFI::Pointer::NULL
        end
        send_listview_message(hwnd, :GETSUBITEMRECT, wparam: iItem, lparam: prc)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_subitemhittest
      #define ListView_SubItemHitTest(hwnd, plvhti)
      #   (int)SNDMSG((hwnd), LVM_SUBITEMHITTEST, 0, (LPARAM)(LPLVHITTESTINFO)(plvhti))
      def ListView_SubItemHitTest(hwnd, plvhti) send_listview_message(hwnd, :SUBITEMHITTEST, lparam: plvhti) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_subitemhittestex
      #define ListView_SubItemHitTestEx(hwnd, plvhti)
      #   (int)SNDMSG((hwnd), LVM_SUBITEMHITTEST, (WPARAM)-1, (LPARAM)(LPLVHITTESTINFO)(plvhti))
      def ListView_SubItemHitTestEx(hwnd, plvhti)
        send_listview_message(hwnd, :SUBITEMHITTEST, wparam: -1, lparam: plvhti)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setcolumnorderarray
      #define ListView_SetColumnOrderArray(hwnd, iCount, pi) (BOOL)SNDMSG((hwnd), LVM_SETCOLUMNORDERARRAY, (WPARAM)(iCount), (LPARAM)(LPINT)(pi))
      def ListView_SetColumnOrderArray(hwnd, iCount, pi)
        send_listview_message(hwnd, :SETCOLUMNORDERARRAY, wparam: iCount, lparam: pi)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getcolumnorderarray
      #define ListView_GetColumnOrderArray(hwnd, iCount, pi) (BOOL)SNDMSG((hwnd), LVM_GETCOLUMNORDERARRAY, (WPARAM)(iCount), (LPARAM)(LPINT)(pi))
      def ListView_GetColumnOrderArray(hwnd, iCount, pi)
        send_listview_message(hwnd, :GETCOLUMNORDERARRAY, wparam: iCount, lparam: pi)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_sethotitem
      #define ListView_SetHotItem(hwnd, i) (int)SNDMSG((hwnd), LVM_SETHOTITEM, (WPARAM)(i), 0)
      def ListView_SetHotItem(hwnd, i) send_listview_message(hwnd, :SETHOTITEM, wparam: i) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_gethotitem
      #define ListView_GetHotItem(hwnd) (int)SNDMSG((hwnd), LVM_GETHOTITEM, 0, 0)
      def ListView_GetHotItem(hwnd) send_listview_message(hwnd, :GETHOTITEM) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_sethotcursor
      #define ListView_SetHotCursor(hwnd, hcur) (HCURSOR)SNDMSG((hwnd), LVM_SETHOTCURSOR, 0, (LPARAM)(hcur))
      def ListView_SetHotCursor(hwnd, hcur) send_listview_message(hwnd, :SETHOTCURSOR, wparam: hcur) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_gethotcursor
      #define ListView_GetHotCursor(hwnd) (HCURSOR)SNDMSG((hwnd), LVM_GETHOTCURSOR, 0, 0)
      def ListView_GetHotCursor(hwnd) send_listview_message(hwnd, :GETHOTCURSOR) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_approximateviewrect
      #define ListView_ApproximateViewRect(hwnd, iWidth, iHeight, iCount) (DWORD)SNDMSG((hwnd), LVM_APPROXIMATEVIEWRECT, (WPARAM)(iCount), MAKELPARAM(iWidth, iHeight))
      def ListView_ApproximateViewRect(hwnd, iWidth, iHeight, iCount)
        send_listview_message(hwnd, :APPROXIMATEVIEWRECT, wparam: iCount, lparam: MAKELPARAM(iWidth, iHeight))
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setworkareas
      #define ListView_SetWorkAreas(hwnd, nWorkAreas, prc) (BOOL)SNDMSG((hwnd), LVM_SETWORKAREAS, (WPARAM)(int)(nWorkAreas), (LPARAM)(RECT *)(prc))
      def ListView_SetWorkAreas(hwnd, nWorkAreas, prc)
        send_listview_message(hwnd, :SETWORKAREAS, wparam: nWorkAreas, lparam: prc)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getworkareas
      #define ListView_GetWorkAreas(hwnd, nWorkAreas, prc)
      #   (BOOL)SNDMSG((hwnd), LVM_GETWORKAREAS, (WPARAM)(int)(nWorkAreas), (LPARAM)(RECT *)(prc))
      def ListView_GetWorkAreas(hwnd, nWorkAreas, prc)
        send_listview_message(hwnd, :GETWORKAREAS, wparam: nWorkAreas, lparam: prc)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getnumberofworkareas
      #define ListView_GetNumberOfWorkAreas(hwnd, pnWorkAreas)
      #   (BOOL)SNDMSG((hwnd), LVM_GETNUMBEROFWORKAREAS, 0, (LPARAM)(UINT *)(pnWorkAreas))
      def ListView_GetNumberOfWorkAreas(hwnd, pnWorkAreas)
        send_listview_message(hwnd, :GETNUMBEROFWORKAREAS, lparam: pnWorkAreas)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getselectionmark
      #define ListView_GetSelectionMark(hwnd) (int)SNDMSG((hwnd), LVM_GETSELECTIONMARK, 0, 0)
      def ListView_GetSelectionMark(hwnd) send_listview_message(hwnd, :GETSELECTIONMARK) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setselectionmark
      #define ListView_SetSelectionMark(hwnd, i) (int)SNDMSG((hwnd), LVM_SETSELECTIONMARK, 0, (LPARAM)(i))
      def ListView_SetSelectionMark(hwnd, i) send_listview_message(hwnd, :SETSELECTIONMARK, lparam: i) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_sethovertime
      #define ListView_SetHoverTime(hwndLV, dwHoverTimeMs)
      #   (DWORD)SNDMSG((hwndLV), LVM_SETHOVERTIME, 0, (LPARAM)(dwHoverTimeMs))
      def ListView_SetHoverTime(hwndLV, dwHoverTimeMs)
        send_listview_message(hwndLV, :SETHOVERTIME, lparam: dwHoverTimeMs)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_gethovertime
      #define ListView_GetHoverTime(hwndLV) (DWORD)SNDMSG((hwndLV), LVM_GETHOVERTIME, 0, 0)
      def ListView_GetHoverTime(hwndLV) send_listview_message(hwndLV, :GETHOVERTIME) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_settooltips
      #define ListView_SetToolTips(hwndLV, hwndNewHwnd)  (HWND)SNDMSG((hwndLV), LVM_SETTOOLTIPS, (WPARAM)(hwndNewHwnd), 0)
      def ListView_SetToolTips(hwndLV, hwndNewHwnd) send_listview_message(hwndLV, :SETTOOLTIPS, wparam: hwndNewHwnd) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_gettooltips
      #define ListView_GetToolTips(hwndLV) (HWND)SNDMSG((hwndLV), LVM_GETTOOLTIPS, 0, 0)
      def ListView_GetToolTips(hwndLV) send_listview_message(hwndLV, :GETTOOLTIPS) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_sortitemsex
      #define ListView_SortItemsEx(hwndLV, _pfnCompare, _lPrm)
      #   (BOOL)SNDMSG((hwndLV), LVM_SORTITEMSEX, (WPARAM)(LPARAM)(_lPrm), (LPARAM)(PFNLVCOMPARE)(_pfnCompare))
      def ListView_SortItemsEx(hwndLV, _pfnCompare, _lPrm)
        send_listview_message(hwndLV, :SORTITEMSEX, wparam: _lPrm, lparam: _pfnCompare)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setbkimage
      #define ListView_SetBkImage(hwnd, plvbki) (BOOL)SNDMSG((hwnd), LVM_SETBKIMAGE, 0, (LPARAM)(plvbki))
      def ListView_SetBkImage(hwnd, plvbki) send_listview_message(hwnd, :SETBKIMAGE, lparam: plvbki) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getbkimage
      #define ListView_GetBkImage(hwnd, plvbki) (BOOL)SNDMSG((hwnd), LVM_GETBKIMAGE, 0, (LPARAM)(plvbki))
      def ListView_GetBkImage(hwnd, plvbki) send_listview_message(hwnd, :GETBKIMAGE, lparam: plvbki) end

      if WINDOWS_VERSION >= :xp
        I_GROUPIDCALLBACK = -1
        I_GROUPIDNONE     = -2
        I_COLUMNSCALLBACK = -1

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setselectedcolumn
        #define ListView_SetSelectedColumn(hwnd, iCol) SNDMSG((hwnd), LVM_SETSELECTEDCOLUMN, (WPARAM)(iCol), 0)
        def ListView_SetSelectedColumn(hwnd, iCol) send_listview_message(hwnd, LVM_SETSELECTEDCOLUMN, wparam: iCol) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setview
        #define ListView_SetView(hwnd, iView)  (DWORD)SNDMSG((hwnd), LVM_SETVIEW, (WPARAM)(DWORD)(iView), 0)
        def ListView_SetView(hwnd, iView) send_listview_message(hwnd, :SETVIEW, wparam: iView) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getview
        #define ListView_GetView(hwnd) (DWORD)SNDMSG((hwnd), LVM_GETVIEW, 0, 0)
        def ListView_GetView(hwnd) send_listview_message(hwnd, :GETVIEW) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_insertgroup
        #define ListView_InsertGroup(hwnd, index, pgrp) SNDMSG((hwnd), LVM_INSERTGROUP, (WPARAM)(index), (LPARAM)(pgrp))
        def ListView_InsertGroup(hwnd, index, pgrp)
          send_listview_message(hwnd, :INSERTGROUP, wparam: index, lparam: pgrp)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setgroupinfo
        #define ListView_SetGroupInfo(hwnd, iGroupId, pgrp)  SNDMSG((hwnd), LVM_SETGROUPINFO, (WPARAM)(iGroupId), (LPARAM)(pgrp))
        def ListView_SetGroupInfo(hwnd, iGroupId, pgrp)
          send_listview_message(hwnd, :SETGROUPINFO, wparam: iGroupId, lparam: pgrp)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getgroupinfo
        #define ListView_GetGroupInfo(hwnd, iGroupId, pgrp) SNDMSG((hwnd), LVM_GETGROUPINFO, (WPARAM)(iGroupId), (LPARAM)(pgrp))
        def ListView_GetGroupInfo(hwnd, iGroupId, pgrp)
          send_listview_message(hwnd, :GETGROUPINFO, wparam: iGroupId, lparam: pgrp)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_removegroup
        #define ListView_RemoveGroup(hwnd, iGroupId) SNDMSG((hwnd), LVM_REMOVEGROUP, (WPARAM)(iGroupId), 0)
        def ListView_RemoveGroup(hwnd, iGroupId) send_listview_message(hwnd, :REMOVEGROUP, wparam: iGroupId) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_movegroup
        #define ListView_MoveGroup(hwnd, iGroupId, toIndex) SNDMSG((hwnd), LVM_MOVEGROUP, (WPARAM)(iGroupId), (LPARAM)(toIndex))
        def ListView_MoveGroup(hwnd, iGroupId, toIndex)
          send_listview_message(hwnd, :MOVEGROUP, wparam: iGroupId, lparam: toIndex)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getgroupcount
        #define ListView_GetGroupCount(hwnd) SNDMSG((hwnd), LVM_GETGROUPCOUNT, (WPARAM)0, (LPARAM)0)
        def ListView_GetGroupCount(hwnd) send_listview_message(hwnd, :GETGROUPCOUNT) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getgroupinfobyindex
        #define ListView_GetGroupInfoByIndex(hwnd, iIndex, pgrp) SNDMSG((hwnd), LVM_GETGROUPINFOBYINDEX, (WPARAM)(iIndex), (LPARAM)(pgrp))
        def ListView_GetGroupInfoByIndex(hwnd, iIndex, pgrp)
          send_listview_message(hwnd, :GETGROUPINFOBYINDEX, wparam: iIndex, lparam: pgrp)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_moveitemtogroup
        #define ListView_MoveItemToGroup(hwnd, idItemFrom, idGroupTo) SNDMSG((hwnd), LVM_MOVEITEMTOGROUP, (WPARAM)(idItemFrom), (LPARAM)(idGroupTo))
        def ListView_MoveItemToGroup(hwnd, idItemFrom, idGroupTo)
          send_listview_message(hwnd, :MOVEITEMTOGROUP, wparam: idItemFrom, lparam: idGroupTo)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getgrouprect
        #define ListView_GetGroupRect(hwnd, iGroupId, type, prc) SNDMSG((hwnd), LVM_GETGROUPRECT, (WPARAM)(iGroupId),
        #   ((prc) ? (((RECT*)(prc))->top = (type)), (LPARAM)(RECT*)(prc) : (LPARAM)(RECT*)NULL))
        def ListView_GetGroupRect(hwnd, iGroupId, type, prc)
          prc = if prc
            prc.top = type
            prc
          end || nil
          send_listview_message(hwnd, :GETGROUPRECT, wparam: iGroupId, lparam: prc)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setgroupmetrics
        #define ListView_SetGroupMetrics(hwnd, pGroupMetrics) SNDMSG((hwnd), LVM_SETGROUPMETRICS, 0, (LPARAM)(pGroupMetrics))
        def ListView_SetGroupMetrics(hwnd, pGroupMetrics)
          send_listview_message(hwnd, :SETGROUPMETRICS, lparam: pGroupMetrics)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getgroupmetrics
        #define ListView_GetGroupMetrics(hwnd, pGroupMetrics) SNDMSG((hwnd), LVM_GETGROUPMETRICS, 0, (LPARAM)(pGroupMetrics))
        def ListView_GetGroupMetrics(hwnd, pGroupMetrics)
          send_listview_message(hwnd, :GETGROUPMETRICS, lparam: pGroupMetrics)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_enablegroupview
        #define ListView_EnableGroupView(hwnd, fEnable) SNDMSG((hwnd), LVM_ENABLEGROUPVIEW, (WPARAM)(fEnable), 0)
        def ListView_EnableGroupView(hwnd, fEnable) send_listview_message(hwnd, :ENABLEGROUPVIEW, wparam: fEnable) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_sortgroups
        #define ListView_SortGroups(hwnd, _pfnGroupCompate, _plv) SNDMSG((hwnd), LVM_SORTGROUPS,
        #   (WPARAM)(_pfnGroupCompate), (LPARAM)(_plv))
        def ListView_SortGroups(hwnd, _pfnGroupCompate, _plv)
          send_listview_message(hwnd, :SORTGROUPS, wparam: _pfnGroupCompate, lparam: _plv)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_insertgroupsorted
        #define ListView_InsertGroupSorted(hwnd, structInsert) SNDMSG((hwnd), LVM_INSERTGROUPSORTED, (WPARAM)(structInsert), 0)
        def ListView_InsertGroupSorted(hwnd, structInsert)
          send_listview_message(hwnd, :INSERTGROUPSORTED, wparam: structInsert)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_removeallgroups
        #define ListView_RemoveAllGroups(hwnd)  SNDMSG((hwnd), LVM_REMOVEALLGROUPS, 0, 0)
        def ListView_RemoveAllGroups(hwnd) send_listview_message(hwnd, :REMOVEALLGROUPS) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_hasgroup
        #define ListView_HasGroup(hwnd, dwGroupId) SNDMSG((hwnd), LVM_HASGROUP, dwGroupId, 0)
        def ListView_HasGroup(hwnd, dwGroupId) send_listview_message(hwnd, :HASGROUP, wparam: dwGroupId) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setgroupstate
        #define ListView_SetGroupState(hwnd, dwGroupId, dwMask, dwState) \
        #{ LVGROUP _macro_lvg;\
        # _macro_lvg.cbSize = sizeof(_macro_lvg);\
        # _macro_lvg.mask = LVGF_STATE;\
        # _macro_lvg.stateMask = dwMask;\
        # _macro_lvg.state = dwState;\
        # SNDMSG((hwnd), LVM_SETGROUPINFO, (WPARAM)(dwGroupId), (LPARAM)(LVGROUP *)&_macro_lvg);\
        #}
        def ListView_SetGroupState(hwnd, dwGroupId, dwMask, dwState)
          _macro_lvg = LVGROUP.new
          _macro_lvg.cbSize = _macro_lvg.size
          _macro_lvg.mask = LVGF_STATE
          _macro_lvg.stateMask = dwMask
          _macro_lvg.state = dwState
          send_listview_message(hwnd, :SETGROUPINFO, wparam: dwGroupId, lparam: _macro_lvg)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getgroupstate
        #define ListView_GetGroupState(hwnd, dwGroupId, dwMask) (UINT) SNDMSG((hwnd), LVM_GETGROUPSTATE, (WPARAM)(dwGroupId), (LPARAM)(dwMask))
        def ListView_GetGroupState(hwnd, dwGroupId, dwMask)
          send_listview_message(hwnd, :GETGROUPSTATE, wparam: dwGroupId, lparam: dwMask)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getfocusedgroup
        #define ListView_GetFocusedGroup(hwnd)  SNDMSG((hwnd), LVM_GETFOCUSEDGROUP, 0, 0)
        def ListView_GetFocusedGroup(hwnd) send_listview_message(hwnd, :GETFOCUSEDGROUP) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_settileviewinfo
        #define ListView_SetTileViewInfo(hwnd, ptvi) SNDMSG((hwnd), LVM_SETTILEVIEWINFO, 0, (LPARAM)(ptvi))
        def ListView_SetTileViewInfo(hwnd, ptvi) send_listview_message(hwnd, :SETTILEVIEWINFO, lparam: ptvi) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_gettileviewinfo
        #define ListView_GetTileViewInfo(hwnd, ptvi) SNDMSG((hwnd), LVM_GETTILEVIEWINFO, 0, (LPARAM)(ptvi))
        def ListView_GetTileViewInfo(hwnd, ptvi) send_listview_message(hwnd, LVM_GETTILEVIEWINFO, lparam: ptvi) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_settileinfo
        #define ListView_SetTileInfo(hwnd, pti) SNDMSG((hwnd), LVM_SETTILEINFO, 0, (LPARAM)(pti))
        def ListView_SetTileInfo(hwnd, pti) send_listview_message(hwnd, :SETTILEINFO, lparam: pti) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_gettileinfo
        #define ListView_GetTileInfo(hwnd, pti) SNDMSG((hwnd), LVM_GETTILEINFO, 0, (LPARAM)(pti))
        def ListView_GetTileInfo(hwnd, pti) send_listview_message(hwnd, :GETTILEINFO, lparam: pti) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setinsertmark
        #define ListView_SetInsertMark(hwnd, lvim) (BOOL)SNDMSG((hwnd), LVM_SETINSERTMARK, (WPARAM) 0, (LPARAM) (lvim))
        def ListView_SetInsertMark(hwnd, lvim) send_listview_message(hwnd, :SETINSERTMARK, lparam: lvim) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getinsertmark
        #define ListView_GetInsertMark(hwnd, lvim) (BOOL)SNDMSG((hwnd), LVM_GETINSERTMARK, (WPARAM) 0, (LPARAM) (lvim))
        def ListView_GetInsertMark(hwnd, lvim) send_listview_message(hwnd, :GETINSERTMARK, lparam: lvim) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_insertmarkhittest
        #define ListView_InsertMarkHitTest(hwnd, point, lvim) (int)SNDMSG((hwnd), LVM_INSERTMARKHITTEST, (WPARAM)(LPPOINT)(point), (LPARAM)(LPLVINSERTMARK)(lvim))
        def ListView_InsertMarkHitTest(hwnd, point, lvim)
          send_listview_message(hwnd, :INSERTMARKHITTEST, wparam: point, lparam: lvim)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_insertmarkhittest
        #define ListView_GetInsertMarkRect(hwnd, rc) (int)SNDMSG((hwnd), LVM_GETINSERTMARKRECT, (WPARAM)0, (LPARAM)(LPRECT)(rc))
        def ListView_GetInsertMarkRect(hwnd, rc) send_listview_message(hwnd, :GETINSERTMARKRECT, lparam: rc) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setinsertmarkcolor
        #define ListView_SetInsertMarkColor(hwnd, color) (COLORREF)SNDMSG((hwnd), LVM_SETINSERTMARKCOLOR, (WPARAM)0, (LPARAM)(COLORREF)(color))
        def ListView_SetInsertMarkColor(hwnd, color) send_listview_message(hwnd, :SETINSERTMARKCOLOR, lparam: color) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getinsertmarkcolor
        #define ListView_GetInsertMarkColor(hwnd) (COLORREF)SNDMSG((hwnd), LVM_GETINSERTMARKCOLOR, (WPARAM)0, (LPARAM)0)
        def ListView_GetInsertMarkColor(hwnd) send_listview_message(hwnd, :GETINSERTMARKCOLOR) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setinfotip
        #define ListView_SetInfoTip(hwndLV, plvInfoTip) (BOOL)SNDMSG((hwndLV), LVM_SETINFOTIP, (WPARAM)0, (LPARAM)(plvInfoTip))
        def ListView_SetInfoTip(hwndLV, plvInfoTip) send_listview_message(hwndLV, :SETINFOTIP, lparam: plvInfoTip) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getselectedcolumn
        #define ListView_GetSelectedColumn(hwnd) (UINT)SNDMSG((hwnd), LVM_GETSELECTEDCOLUMN, 0, 0)
        def ListView_GetSelectedColumn(hwnd) send_listview_message(hwnd, :GETSELECTEDCOLUMN) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_isgroupviewenabled
        #define ListView_IsGroupViewEnabled(hwnd) (BOOL)SNDMSG((hwnd), LVM_ISGROUPVIEWENABLED, 0, 0)
        def ListView_IsGroupViewEnabled(hwnd) send_listview_message(hwnd, :ISGROUPVIEWENABLED) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getoutlinecolor
        #define ListView_GetOutlineColor(hwnd)  (COLORREF)SNDMSG((hwnd), LVM_GETOUTLINECOLOR, 0, 0)
        def ListView_GetOutlineColor(hwnd) send_listview_message(hwnd, :GETOUTLINECOLOR) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setoutlinecolor
        #define ListView_SetOutlineColor(hwnd, color) (COLORREF)SNDMSG((hwnd), LVM_SETOUTLINECOLOR, (WPARAM)0, (LPARAM)(COLORREF)(color))
        def ListView_SetOutlineColor(hwnd, color) send_listview_message(hwnd, :SETOUTLINECOLOR, lparam: color) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_canceleditlabel
        #define ListView_CancelEditLabel(hwnd) (VOID)SNDMSG((hwnd), LVM_CANCELEDITLABEL, (WPARAM)0, (LPARAM)0)
        def ListView_CancelEditLabel(hwnd) send_listview_message(hwnd, :CANCELEDITLABEL) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_mapindextoid
        #define ListView_MapIndexToID(hwnd, index) (UINT)SNDMSG((hwnd), LVM_MAPINDEXTOID, (WPARAM)(index), (LPARAM)0)
        def ListView_MapIndexToID(hwnd, index) send_listview_message(hwnd, :MAPINDEXTOID, wparam: index) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_mapidtoindex
        #define ListView_MapIDToIndex(hwnd, id) (UINT)SNDMSG((hwnd), LVM_MAPIDTOINDEX, (WPARAM)(id), (LPARAM)0)
        def ListView_MapIDToIndex(hwnd, id) send_listview_message(hwnd, :MAPIDTOINDEX, wparam: id) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_isitemvisible
        #define ListView_IsItemVisible(hwnd, index) (UINT)SNDMSG((hwnd), LVM_ISITEMVISIBLE, (WPARAM)(index), (LPARAM)0)
        def ListView_IsItemVisible(hwnd, index) send_listview_message(hwnd, :ISITEMVISIBLE, wparam: index) end

        if WINDOWS_VERSION >= :vista
          # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setgroupheaderimagelist
          #define ListView_SetGroupHeaderImageList(hwnd, himl) (HIMAGELIST)SNDMSG((hwnd), LVM_SETIMAGELIST, (WPARAM)LVSIL_GROUPHEADER, (LPARAM)(HIMAGELIST)(himl))
          def ListView_SetGroupHeaderImageList(hwnd, himl)
            send_listview_message(hwnd, :SETIMAGELIST, wparam: ListViewSetImageList[:GROUPHEADER], lparam: himl)
          end

          # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getgroupheaderimagelist
          #define ListView_GetGroupHeaderImageList(hwnd) (HIMAGELIST)SNDMSG((hwnd), LVM_GETIMAGELIST, (WPARAM)LVSIL_GROUPHEADER, 0L)
          def ListView_GetGroupHeaderImageList(hwnd)
            send_listview_message(hwnd, :GETIMAGELIST, wparam: ListViewSetImageList[:GROUPHEADER])
          end

          # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getemptytext
          #define ListView_GetEmptyText(hwnd, pszText, cchText) (BOOL)SNDMSG((hwnd), LVM_GETEMPTYTEXT, (WPARAM)(cchText), (LPARAM)(pszText))
          def ListView_GetEmptyText(hwnd, pszText, cchText)
            send_listview_message(hwnd, :GETEMPTYTEXT, wparam: cchText, lparam: pszText)
          end

          #define ListView_GetFooterRect(hwnd, prc) (BOOL)SNDMSG((hwnd), LVM_GETFOOTERRECT, (WPARAM)(0), (LPARAM)(prc))
          def ListView_GetFooterRect(hwnd, prc) send_listview_message(hwnd, :GETFOOTERRECT, lparam: prc) end

          # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getfooterrect
          #define ListView_GetFooterInfo(hwnd, plvfi) (BOOL)SNDMSG((hwnd), LVM_GETFOOTERINFO, (WPARAM)(0), (LPARAM)(plvfi))
          def ListView_GetFooterInfo(hwnd, plvfi) send_listview_message(hwnd, :GETFOOTERINFO, lparam: plvfi) end

          # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getfooteritemrect
          #define ListView_GetFooterItemRect(hwnd, iItem, prc) (BOOL)SNDMSG((hwnd), LVM_GETFOOTERITEMRECT, (WPARAM)(iItem), (LPARAM)(prc))
          def ListView_GetFooterItemRect(hwnd, iItem, prc)
            send_listview_message(hwnd, :GETFOOTERITEMRECT, wparam: iItem, lparam: prc)
          end

          # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getfooteritem
          #define ListView_GetFooterItem(hwnd, iItem, pfi) (BOOL)SNDMSG((hwnd), LVM_GETFOOTERITEM, (WPARAM)(iItem), (LPARAM)(pfi))
          def ListView_GetFooterItem(hwnd, iItem, pfi)
            send_listview_message(hwnd, :GETFOOTERITEM, wparam: iItem, lparam: pfi)
          end

          # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getitemindexrect
          #define ListView_GetItemIndexRect(hwnd, plvii, iSubItem, code, prc) (BOOL)SNDMSG((hwnd), LVM_GETITEMINDEXRECT, (WPARAM)(LVITEMINDEX*)(plvii), ((prc) ? ((((LPRECT)(prc))->top = (iSubItem)), (((LPRECT)(prc))->left = (code)), (LPARAM)(prc)) : (LPARAM)(LPRECT)NULL))
          def ListView_GetItemIndexRect(hwnd, plvii, iSubItem, code, prc)
            prc = if !prc.null?
              prc.top = iSubItem
              prc.left = code
              prc
            else
              FFI::Pointer::NULL
            end
            send_listview_message(hwnd, :GETITEMINDEXRECT, wparam: plvii, lparam: prc)
          end

          # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_setitemindexstate
          #define ListView_SetItemIndexState(hwndLV, plvii, data, mask) \
          #   LV_ITEM _macro_lvi;\
          #   _macro_lvi.stateMask = (mask);\
          #   _macro_lvi.state = (data);\
          #   SNDMSG((hwndLV), LVM_SETITEMINDEXSTATE, (WPARAM)(LVITEMINDEX*)(plvii), (LPARAM)(LV_ITEM *)&_macro_lvi);\
          #   }
          def ListView_SetItemIndexState(hwndLV, plvii, data, mask)
            _macro_lvi = LV_ITEM.new
            _macro_lvi.stateMask = mask
            _macro_lvi.state = data
            send_listview_message(hwndLV, :SETITEMINDEXSTATE, wparam: plvii, lparam: _macro_lvi)
          end

          # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-listview_getnextitemindex
          #define ListView_GetNextItemIndex(hwnd, plvii, flags) (BOOL)SNDMSG((hwnd), LVM_GETNEXTITEMINDEX, (WPARAM)(LVITEMINDEX*)(plvii), MAKELPARAM((flags), 0))
          def ListView_GetNextItemIndex(hwnd, plvii, flags)
            send_listview_message(hwnd, :GETNEXTITEMINDEX, wparam: plvii, lparam: MAKELPARAM(flags, 0))
          end
        end
      end

      private def send_listview_message(hwnd, message, wparam: 0, lparam: 0)
        User32.SendMessage(hwnd, ListViewMessage[message], wparam, lparam)
      end
    end
  end
end
