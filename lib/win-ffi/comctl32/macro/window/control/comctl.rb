module WinFFI
  module Comctl32
    class << self
      # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/nf-commctrl-handle_wm_notify
      #define HANDLE_WM_NOTIFY(hwnd, wParam, lParam, fn) (fn)((hwnd), (int)(wParam), (NMHDR *)(lParam))
      def HANDLE_WM_NOTIFY(hwnd, wParam, lParam, fn)
        send(fn, hwnd, wParam, lParam)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-forward_wm_notify
      #define FORWARD_WM_NOTIFY(hwnd, idFrom, pnmhdr, fn) (LRESULT)(fn)((hwnd), WM_NOTIFY, (WPARAM)(int)(idFrom), (LPARAM)(NMHDR *)(pnmhdr))
      def FORWARD_WM_NOTIFY(hwnd, idFrom, pnmhdr, fn)
        send(fn, hwnd, :NOTIFY, idFrom, pnmhdr)
      end

      #define CCSIZEOF_STRUCT(structname, member)  (((int)((LPBYTE)(&((structname*)0)->member) - ((LPBYTE)((structname*)0)))) + sizeof(((structname*)0)->member))
      def CCSIZEOF_STRUCT(structname, member)
        # (((int)((LPBYTE)(&((structname*)0)->member) - ((LPBYTE)((structname*)0)))) + sizeof(((structname*)0)->member))
      end
    end
  end
end
