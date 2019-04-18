require_relative '../../../../../win-ffi/comctl32/enum/window/control/tabcontrol/message'

module WinFFI
  module Comctl32
    class << self
      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-getimagelist
      #define TabCtrl_GetImageList(hwnd) (HIMAGELIST)SNDMSG((hwnd), TCM_GETIMAGELIST, 0, 0L)
      def TabCtrl_GetImageList(hwnd)
        send_tab_ctrl_message(hwnd, :GETIMAGELIST)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-setimagelist
      #define TabCtrl_SetImageList(hwnd, himl) (HIMAGELIST)SNDMSG((hwnd), TCM_SETIMAGELIST, 0, (LPARAM)(HIMAGELIST)(himl))
      def TabCtrl_SetImageList(hwnd, himl)
        send_tab_ctrl_message(hwnd, :SETIMAGELIST, lparam: himl)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-getitemcount
      #define TabCtrl_GetItemCount(hwnd) (int)SNDMSG((hwnd), TCM_GETITEMCOUNT, 0, 0L)
      def TabCtrl_GetItemCount(hwnd)
        send_tab_ctrl_message(hwnd, :GETITEMCOUNT)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-getitem
      #define TabCtrl_GetItem(hwnd, iItem, pitem) (BOOL)SNDMSG((hwnd), TCM_GETITEM, (WPARAM)(int)(iItem), (LPARAM)(TC_ITEM *)(pitem))
      def TabCtrl_GetItem(hwnd, iItem, pitem)
        send_tab_ctrl_message(hwnd, :GETITEM, wparam: iItem, lparam: pitem.address)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-setitem
      #define TabCtrl_SetItem(hwnd, iItem, pitem) (BOOL)SNDMSG((hwnd), TCM_SETITEM, (WPARAM)(int)(iItem), (LPARAM)(TC_ITEM *)(pitem))
      def TabCtrl_SetItem(hwnd, iItem, pitem)
        send_tab_ctrl_message(hwnd, :SETITEM, wparam: iItem, lparam: pitem.address)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-insertitem
      #define TabCtrl_InsertItem(hwnd, iItem, pitem) (int)SNDMSG((hwnd), TCM_INSERTITEM, (WPARAM)(int)(iItem), (LPARAM)(const TC_ITEM *)(pitem))
      def TabCtrl_InsertItem(hwnd, iItem, pitem)
        send_tab_ctrl_message(hwnd, :INSERTITEM, wparam: iItem, lparam: pitem.address)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-deleteitem
      #define TabCtrl_DeleteItem(hwnd, i) (BOOL)SNDMSG((hwnd), TCM_DELETEITEM, (WPARAM)(int)(i), 0L)
      def TabCtrl_DeleteItem(hwnd, i)
        send_tab_ctrl_message(hwnd, :DELETEITEM, wparam: i)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-deleteallitems
      #define TabCtrl_DeleteAllItems(hwnd) (BOOL)SNDMSG((hwnd), TCM_DELETEALLITEMS, 0, 0L)
      def TabCtrl_DeleteAllItems(hwnd)
        send_tab_ctrl_message(hwnd, :DELETEALLITEMS)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-getitemrect
      #define TabCtrl_GetItemRect(hwnd, i, prc) (BOOL)SNDMSG((hwnd), TCM_GETITEMRECT, (WPARAM)(int)(i), (LPARAM)(RECT *)(prc))
      def TabCtrl_GetItemRect(hwnd, i, prc)
        send_tab_ctrl_message(hwnd, :GETITEMRECT, wparam: i, lparam: prc.address)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-getcursel
      #define TabCtrl_GetCurSel(hwnd) (int)SNDMSG((hwnd), TCM_GETCURSEL, 0, 0)
      def TabCtrl_GetCurSel(hwnd)
        send_tab_ctrl_message(hwnd, :GETCURSEL)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-setcursel
      #define TabCtrl_SetCurSel(hwnd, i) (int)SNDMSG((hwnd), TCM_SETCURSEL, (WPARAM)(i), 0)
      def TabCtrl_SetCurSel(hwnd, i)
        send_tab_ctrl_message(hwnd, :SETCURSEL, wparam: i)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-hittest
      #define TabCtrl_HitTest(hwndTC, pinfo) (int)SNDMSG((hwndTC), TCM_HITTEST, 0, (LPARAM)(TC_HITTESTINFO *)(pinfo))
      def TabCtrl_HitTest(hwndTC, pinfo)
        send_tab_ctrl_message(hwndTC, :HITTEST, lparam: pinfo.address)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-setitemextra
      #define TabCtrl_SetItemExtra(hwndTC, cb) (BOOL)SNDMSG((hwndTC), TCM_SETITEMEXTRA, (WPARAM)(cb), 0L)
      def TabCtrl_SetItemExtra(hwndTC, cb)
        send_tab_ctrl_message(hwndTC, :SETITEMEXTRA, wparam: cb)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-adjustrect
      #define TabCtrl_AdjustRect(hwnd, bLarger, prc) (int)SNDMSG(hwnd, TCM_ADJUSTRECT, (WPARAM)(BOOL)(bLarger), (LPARAM)(RECT *)(prc))
      def TabCtrl_AdjustRect(hwnd, bLarger, prc)
        send_tab_ctrl_message(hwnd, :ADJUSTRECT, wparam: bLarger, lparam: prc.address)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-setitemsize
      #define TabCtrl_SetItemSize(hwnd, x, y) (DWORD)SNDMSG((hwnd), TCM_SETITEMSIZE, 0, MAKELPARAM(x,y))
      def TabCtrl_SetItemSize(hwnd, x, y)
        send_tab_ctrl_message(hwnd, :SETITEMSIZE, lparam: MAKELPARAM(x, y))
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-removeimage
      #define TabCtrl_RemoveImage(hwnd, i) (void)SNDMSG((hwnd), TCM_REMOVEIMAGE, i, 0L)
      def TabCtrl_RemoveImage(hwnd, i)
        send_tab_ctrl_message(hwnd, :REMOVEIMAGE, wparam: i)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-setpadding
      #define TabCtrl_SetPadding(hwnd, cx, cy) (void)SNDMSG((hwnd), TCM_SETPADDING, 0, MAKELPARAM(cx, cy))
      def TabCtrl_SetPadding(hwnd, cx, cy)
        send_tab_ctrl_message(hwnd, :SETPADDING, lparam: MAKELPARAM(cx, cy))
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-getrowcount
      #define TabCtrl_GetRowCount(hwnd) (int)SNDMSG((hwnd), TCM_GETROWCOUNT, 0, 0L)
      def TabCtrl_GetRowCount(hwnd)
        send_tab_ctrl_message(hwnd, :GETROWCOUNT)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-gettooltips
      #define TabCtrl_GetToolTips(hwnd) (HWND)SNDMSG((hwnd), TCM_GETTOOLTIPS, 0, 0L)
      def TabCtrl_GetToolTips(hwnd)
        send_tab_ctrl_message(hwnd, :GETTOOLTIPS)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-settooltips
      #define TabCtrl_SetToolTips(hwnd, hwndTT) (void)SNDMSG((hwnd), TCM_SETTOOLTIPS, (WPARAM)(hwndTT), 0L)
      def TabCtrl_SetToolTips(hwnd, hwndTT)
        send_tab_ctrl_message(hwnd, :SETTOOLTIPS, wparam: hwndTT)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-getcurfocus
      #define TabCtrl_GetCurFocus(hwnd) (int)SNDMSG((hwnd), TCM_GETCURFOCUS, 0, 0)
      def TabCtrl_GetCurFocus(hwnd)
        send_tab_ctrl_message(hwnd, :GETCURFOCUS)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-setcurfocus
      #define TabCtrl_SetCurFocus(hwnd, i) SNDMSG((hwnd),TCM_SETCURFOCUS, i, 0)
      def TabCtrl_SetCurFocus(hwnd, i)
        send_tab_ctrl_message(hwnd, :SETCURFOCUS, wparam: i)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-setmintabwidth
      #define TabCtrl_SetMinTabWidth(hwnd, x) (int)SNDMSG((hwnd), TCM_SETMINTABWIDTH, 0, x)
      def TabCtrl_SetMinTabWidth(hwnd, x)
        send_tab_ctrl_message(hwnd, :SETMINTABWIDTH, lparam: x)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-deselectall
      #define TabCtrl_DeselectAll(hwnd, fExcludeFocus) (void)SNDMSG((hwnd), TCM_DESELECTALL, fExcludeFocus, 0)
      def TabCtrl_DeselectAll(hwnd, fExcludeFocus)
        send_tab_ctrl_message(hwnd, :DESELECTALL, wparam: fExcludeFocus)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-highlightitem
      #define TabCtrl_HighlightItem(hwnd, i, fHighlight) (BOOL)SNDMSG((hwnd), TCM_HIGHLIGHTITEM, (WPARAM)(i), (LPARAM)MAKELONG (fHighlight, 0))
      def TabCtrl_HighlightItem(hwnd, i, fHighlight)
        send_tab_ctrl_message(hwnd, :HIGHLIGHTITEM, wparam: i, lparam: MAKELONG(fHighlight, 0))
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-setextendedstyle
      #define TabCtrl_SetExtendedStyle(hwnd, dw) (DWORD)SNDMSG((hwnd), TCM_SETEXTENDEDSTYLE, 0, dw)
      def TabCtrl_SetExtendedStyle(hwnd, dw)
        send_tab_ctrl_message(hwnd, :SETEXTENDEDSTYLE, lparam: dw)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-getextendedstyle
      #define TabCtrl_GetExtendedStyle(hwnd) (DWORD)SNDMSG((hwnd), TCM_GETEXTENDEDSTYLE, 0, 0)
      def TabCtrl_GetExtendedStyle(hwnd)
        send_tab_ctrl_message(hwnd, :GETEXTENDEDSTYLE)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-setunicodeformat
      #define TabCtrl_SetUnicodeFormat(hwnd, fUnicode) (BOOL)SNDMSG((hwnd), TCM_SETUNICODEFORMAT, (WPARAM)(fUnicode), 0)
      def TabCtrl_SetUnicodeFormat(hwnd, fUnicode)
        send_tab_ctrl_message(hwnd, :SETUNICODEFORMAT, wparam: fUnicode)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/Controls/tcm-getunicodeformat
      #define TabCtrl_GetUnicodeFormat(hwnd) (BOOL)SNDMSG((hwnd), TCM_GETUNICODEFORMAT, 0, 0)
      def TabCtrl_GetUnicodeFormat(hwnd)
        send_tab_ctrl_message(hwnd, :GETUNICODEFORMAT)
      end

      private
      def send_tab_ctrl_message(hwnd, message, wparam: 0, lparam: 0)
        User32.SendMessage(hwnd, TabcontrolMessage[message], wparam, lparam)
      end
    end
  end
end
