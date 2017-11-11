require 'win-ffi/core/struct/rect'
require 'win-ffi/comctl32/enum/window/control/statusbar/statusbar_text_flag'

module WinFFI
  module Comctl32
    if WINDOWS_VERSION >= :vista
      # Obsolete
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760762(v=vs.85).aspx
      # HWND CreateStatusWindow(
      #   LONG    style,
      #   LPCTSTR lpszText,
      #   HWND    hwndParent,
      #   UINT    wID)
      encoded_function 'CreateStatusWindow', [:long, :string, :hwnd, :uint], :hwnd

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760763(v=vs.85).aspx
      # void DrawStatusText(
      #   HDC     hdc,
      #   LPCRECT lprc,
      #   LPCTSTR pszText,
      #   UINT    uFlags)
      encoded_function 'DrawStatusText', [:hdc, RECT.ptr, :string, StatusBarTextFlag], :void

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760765(v=vs.85).aspx
      # void MenuHelp(
      #   UINT      uMsg,
      #   WPARAM    wParam,
      #   LPARAM    lParam,
      #   HMENU     hMainMenu,
      #   HINSTANCE hInst,
      #   HWND      hwndStatus,
      #   LPUINT    lpwIDs)
      attach_function 'MenuHelp', [:int, :wparam, :lparam, :hmenu, :hinstance, :hwnd, :pointer], :void
    end
  end
end