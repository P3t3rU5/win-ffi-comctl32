require_relative '../../../../../win-ffi/comctl32/enum/window/control/pager/message'

module WinFFI
  module Comctl32
    class << self
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-pager_setchild
      #define Pager_SetChild(hwnd, hwndChild) (void)SNDMSG((hwnd), PGM_SETCHILD, 0, (LPARAM)(hwndChild))
      def Pager_SetChild(hwnd, hwndChild) send_pager_message(hwnd, :SETCHILD, lparam: hwndChild) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-pager_recalcsize
      #define Pager_RecalcSize(hwnd) (void)SNDMSG((hwnd), PGM_RECALCSIZE, 0, 0)
      def Pager_RecalcSize(hwnd) send_pager_message(hwnd, :RECALCSIZE) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-pager_forwardmouse
      #define Pager_ForwardMouse(hwnd, bForward) (void)SNDMSG((hwnd), PGM_FORWARDMOUSE, (WPARAM)(bForward), 0)
      def Pager_ForwardMouse(hwnd, bForward) send_pager_message(hwnd, :FORWARDMOUSE, wparam: bForward) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-pager_setbkcolor
      #define Pager_SetBkColor(hwnd, clr) (COLORREF)SNDMSG((hwnd), PGM_SETBKCOLOR, 0, (LPARAM)(clr))
      def Pager_SetBkColor(hwnd, clr) send_pager_message(hwnd, :SETBKCOLOR, lparam: clr) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-pager_getbkcolor
      #define Pager_GetBkColor(hwnd) (COLORREF)SNDMSG((hwnd), PGM_GETBKCOLOR, 0, 0)
      def Pager_GetBkColor(hwnd) send_pager_message(hwnd, :GETBKCOLOR) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-pager_setborder
      #define Pager_SetBorder(hwnd, iBorder) (int)SNDMSG((hwnd), PGM_SETBORDER, 0, (LPARAM)(iBorder))
      def Pager_SetBorder(hwnd, iBorder) send_pager_message(hwnd, :SETBORDER, lparam: iBorder) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-pager_getborder
      #define Pager_GetBorder(hwnd) (int)SNDMSG((hwnd), PGM_GETBORDER, 0, 0)
      def Pager_GetBorder(hwnd) send_pager_message(hwnd, :GETBORDER) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-pager_setpos
      #define Pager_SetPos(hwnd, iPos) (int)SNDMSG((hwnd), PGM_SETPOS, 0, (LPARAM)(iPos))
      def Pager_SetPos(hwnd, iPos) send_pager_message(hwnd, :SETPOS, lparam: iPos) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-pager_getpos
      #define Pager_GetPos(hwnd) (int)SNDMSG((hwnd), PGM_GETPOS, 0, 0)
      def Pager_GetPos(hwnd) send_pager_message(hwnd, :GETPOS) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-pager_setbuttonsize
      #define Pager_SetButtonSize(hwnd, iSize) (int)SNDMSG((hwnd), PGM_SETBUTTONSIZE, 0, (LPARAM)(iSize))
      def Pager_SetButtonSize(hwnd, iSize) send_pager_message(hwnd, :SETBUTTONSIZE, lparam: iSize) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-pager_getbuttonsize
      #define Pager_GetButtonSize(hwnd) (int)SNDMSG((hwnd), PGM_GETBUTTONSIZE, 0,0)
      def Pager_GetButtonSize(hwnd) send_pager_message(hwnd, :GETBUTTONSIZE) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-pager_getbuttonstate
      #define Pager_GetButtonState(hwnd, iButton) (DWORD)SNDMSG((hwnd), PGM_GETBUTTONSTATE, 0, (LPARAM)(iButton))
      def Pager_GetButtonState(hwnd, iButton) send_pager_message(hwnd, :GETBUTTONSTATE, lparam: iButton) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-pager_getdroptarget
      #define Pager_GetDropTarget(hwnd, ppdt) (void)SNDMSG((hwnd), PGM_GETDROPTARGET, 0, (LPARAM)(ppdt))
      def Pager_GetDropTarget(hwnd, ppdt) send_pager_message(hwnd, :GETDROPTARGET, lparam: ppdt) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-pager_setscrollinfo
      #define Pager_SetScrollInfo(hwnd, cTimeOut, cLinesPer, cPixelsPerLine) (void) SNDMSG((hwnd), PGM_SETSCROLLINFO, cTimeOut, MAKELONG(cLinesPer, cPixelsPerLine))
      def Pager_SetScrollInfo(hwnd, cTimeOut, cLinesPer, cPixelsPerLine)
        send_pager_message(hwnd, :SETSCROLLINFO, wparam: cTimeOut, lparam: MAKELONG(cLinesPer, cPixelsPerLine))
      end

      private def send_pager_message(hwnd, message, wparam: 0, lparam: 0)
        User32.SendMessage(hwnd, PagerMessage[message], wparam, lparam)
      end
    end
  end
end
