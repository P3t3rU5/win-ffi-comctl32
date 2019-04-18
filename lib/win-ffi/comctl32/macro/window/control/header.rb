require_relative '../../../../../win-ffi/comctl32/enum/window/control/header/message'
require_relative '../../../../../win-ffi/comctl32/enum/window/control/header/set_image_list'

module WinFFI
  module Comctl32
    # TODO
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-header-control-reference-macros
    class << self
      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_getitemcount
      #define Header_GetItemCount(hwndHD) (int)SNDMSG((hwndHD), HDM_GETITEMCOUNT, 0, 0L)
      def Header_GetItemCount(hwndHD) send_header_message(hwndHD, :GETITEMCOUNT) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_insertitem
      #define Header_InsertItem(hwndHD, i, phdi) (int)SNDMSG((hwndHD), HDM_INSERTITEM, (WPARAM)(int)(i), (LPARAM)(const HD_ITEM *)(phdi))
      def Header_InsertItem(hwndHD, i, phdi)
        send_header_message(hwndHD, :INSERTITEM, wparam: i, lparam: phdi.address)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_deleteitem
      #define Header_DeleteItem(hwndHD, i) (BOOL)SNDMSG((hwndHD), HDM_DELETEITEM, (WPARAM)(int)(i), 0L)
      def Header_DeleteItem(hwndHD, i) send_header_message(hwndHD, :DELETEITEM, wparam: i) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_getitem
      #define Header_GetItem(hwndHD, i, phdi) \(BOOL)SNDMSG((hwndHD), HDM_GETITEM, (WPARAM)(int)(i), (LPARAM)(HD_ITEM *)(phdi))
      def Header_GetItem(hwndHD, i, phdi) send_header_message(hwndHD, :GETITEM, wparam: i, lparam: phdi.address) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_setitem
      #define Header_SetItem(hwndHD, i, phdi) (BOOL)SNDMSG((hwndHD), HDM_SETITEM, (WPARAM)(int)(i), (LPARAM)(const HD_ITEM *)(phdi))
      def Header_SetItem(hwndHD, i, phdi) send_header_message(hwndHD, :SETITEM, wparam: i, lparam: phdi.address) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_layout
      #define Header_Layout(hwndHD, playout) (BOOL)SNDMSG((hwndHD), HDM_LAYOUT, 0, (LPARAM)(HD_LAYOUT *)(playout))
      def Header_Layout(hwndHD, playout) send_header_message(hwndHD, :LAYOUT, lparam: playout.address) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_getitemrect
      #define Header_GetItemRect(hwnd, iItem, lprc) (BOOL)SNDMSG((hwnd), HDM_GETITEMRECT, (WPARAM)(iItem), (LPARAM)(lprc))
      def Header_GetItemRect(hwnd, iItem, lprc) send_header_message(hwnd, :GETITEMRECT, wparam: iItem, lparam: lprc) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_setimagelist
      #define Header_SetImageList(hwnd, himl) (HIMAGELIST)SNDMSG((hwnd), HDM_SETIMAGELIST, HDSIL_NORMAL, (LPARAM)(himl))
      def Header_SetImageList(hwnd, himl)
        send_header_message(hwnd, :SETIMAGELIST, wparam: HeaderSetImageList[:NORMAL], lparam: himl)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_setstateimagelist
      #define Header_SetStateImageList(hwnd, himl) (HIMAGELIST)SNDMSG((hwnd), HDM_SETIMAGELIST, HDSIL_STATE, (LPARAM)(himl))
      def Header_SetStateImageList(hwnd, himl)
        send_header_message(hwnd, :SETIMAGELIST, wparam: HeaderSetImageList[:STATE], lparam: himl)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_getimagelist
      #define Header_GetImageList(hwnd) (HIMAGELIST)SNDMSG((hwnd), HDM_GETIMAGELIST, HDSIL_NORMAL, 0)
      def Header_GetImageList(hwnd) send_header_message(hwnd, :GETIMAGELIST, wparam: HeaderSetImageList[:NORMAL]) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_getstateimagelist
      #define Header_GetStateImageList(hwnd) (HIMAGELIST)SNDMSG((hwnd), HDM_GETIMAGELIST, HDSIL_STATE, 0)
      def Header_GetStateImageList(hwnd)
        send_header_message(hwnd, :GETIMAGELIST, wparam: HeaderSetImageList[:STATE])
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_ordertoindex
      #define Header_OrderToIndex(hwnd, i) (int)SNDMSG((hwnd), HDM_ORDERTOINDEX, (WPARAM)(i), 0)
      def Header_OrderToIndex(hwnd, i) send_header_message(hwnd, :ORDERTOINDEX, wparam: i) end

      #define Header_CreateDragImage(hwnd, i) (HIMAGELIST)SNDMSG((hwnd), HDM_CREATEDRAGIMAGE, (WPARAM)(i), 0)
      def Header_CreateDragImage(hwnd, i) send_header_message(hwnd, :CREATEDRAGIMAGE, wparam: i) end

      #define Header_GetOrderArray(hwnd, iCount, lpi) (BOOL)SNDMSG((hwnd), HDM_GETORDERARRAY, (WPARAM)(iCount), (LPARAM)(lpi))
      def Header_GetOrderArray(hwnd, iCount, lpi)
        send_header_message(hwnd, :GETORDERARRAY, wparam: iCount, lparam: lpi)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_setorderarray
      #define Header_SetOrderArray(hwnd, iCount, lpi) (BOOL)SNDMSG((hwnd), HDM_SETORDERARRAY, (WPARAM)(iCount), (LPARAM)(lpi))
      def Header_SetOrderArray(hwnd, iCount, lpi)
        send_header_message(hwnd, :SETORDERARRAY, wparam: iCount, lparam: lpi)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_sethotdivider
      #define Header_SetHotDivider(hwnd, fPos, dw) (int)SNDMSG((hwnd), HDM_SETHOTDIVIDER, (WPARAM)(fPos), (LPARAM)(dw))
      def Header_SetHotDivider(hwnd, fPos, dw) send_header_message(hwnd, :SETHOTDIVIDER, wparam: fPos, lparam: dw) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_setbitmapmargin
      #define Header_SetBitmapMargin(hwnd, iWidth) (int)SNDMSG((hwnd), HDM_SETBITMAPMARGIN, (WPARAM)(iWidth), 0)
      def Header_SetBitmapMargin(hwnd, iWidth) send_header_message(hwnd, :SETBITMAPMARGIN, wparam: iWidth) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_getbitmapmargin
      #define Header_GetBitmapMargin(hwnd) (int)SNDMSG((hwnd), HDM_GETBITMAPMARGIN, 0, 0)
      def Header_GetBitmapMargin(hwnd) send_header_message(hwnd, :GETBITMAPMARGIN) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_setunicodeformat
      #define Header_SetUnicodeFormat(hwnd, fUnicode) (BOOL)SNDMSG((hwnd), HDM_SETUNICODEFORMAT, (WPARAM)(fUnicode), 0)
      def Header_SetUnicodeFormat(hwnd, fUnicode) send_header_message(hwnd, :SETUNICODEFORMAT, wparam: fUnicode) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_setunicodeformat
      #define Header_GetUnicodeFormat(hwnd) (BOOL)SNDMSG((hwnd), HDM_GETUNICODEFORMAT, 0, 0)
      def Header_GetUnicodeFormat(hwnd) send_header_message(hwnd, :GETUNICODEFORMAT) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_setfilterchangetimeout
      #define Header_SetFilterChangeTimeout(hwnd, i) (int)SNDMSG((hwnd), HDM_SETFILTERCHANGETIMEOUT, 0, (LPARAM)(i))
      def Header_SetFilterChangeTimeout(hwnd, i) send_header_message(hwnd, :SETFILTERCHANGETIMEOUT, lparam: i) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_editfilter
      #define Header_EditFilter(hwnd, i, fDiscardChanges) (int)SNDMSG((hwnd), HDM_EDITFILTER, (WPARAM)(i), MAKELPARAM(fDiscardChanges, 0))
      def Header_EditFilter(hwnd, i, fDiscardChanges)
        send_header_message(hwnd, :EDITFILTER, wparam: i, lparam: MAKELPARAM(fDiscardChanges, 0))
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_clearfilter
      #define Header_ClearFilter(hwnd, i) (int)SNDMSG((hwnd), HDM_CLEARFILTER, (WPARAM)(i), 0)
      def Header_ClearFilter(hwnd, i) send_header_message(hwnd, :CLEARFILTER, wparam: i) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_clearallfilters
      #define Header_ClearAllFilters(hwnd) (int)SNDMSG((hwnd), HDM_CLEARFILTER, (WPARAM)-1, 0)
      def Header_ClearAllFilters(hwnd) send_header_message(hwnd, :CLEARFILTER, wparam: -1) end

      if WINDOWS_VERSION >= :vista
        # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_getitemdropdownrect
        #define Header_GetItemDropDownRect(hwnd, iItem, lprc) (BOOL)SNDMSG((hwnd), HDM_GETITEMDROPDOWNRECT, (WPARAM)(iItem), (LPARAM)(lprc))
        def Header_GetItemDropDownRect(hwnd, iItem, lprc)
          send_header_message(hwnd, :GETITEMDROPDOWNRECT, wparam: iItem, lparam: lprc)
        end

        # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_getoverflowrect
        #define Header_GetOverflowRect(hwnd, lprc) (BOOL)SNDMSG((hwnd), HDM_GETOVERFLOWRECT, 0, (LPARAM)(lprc))
        def Header_GetOverflowRect(hwnd, lprc) send_header_message(hwnd, :GETOVERFLOWRECT, lparam: lprc) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_getfocuseditem
        #define Header_GetFocusedItem(hwnd) (int)SNDMSG((hwnd), HDM_GETFOCUSEDITEM, (WPARAM)(0), (LPARAM)(0))
        def Header_GetFocusedItem(hwnd) send_header_message(hwnd, :GETFOCUSEDITEM) end

        # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-header_setfocuseditem
        #define Header_SetFocusedItem(hwnd, iItem) (BOOL)SNDMSG((hwnd), HDM_SETFOCUSEDITEM, (WPARAM)(0), (LPARAM)(iItem))
        def Header_SetFocusedItem(hwnd, iItem) send_header_message(hwnd, :SETFOCUSEDITEM, lparam: iItem) end
      end

      private def send_header_message(hwnd, message, wparam: 0, lparam: 0)
        User32.SendMessage(hwnd, HeaderMessage[:message], wparam, :lparam)
      end
    end
  end
end
