require 'win-ffi/comctl32/enum/window/control/status_bar/statusbar_text_flag'

module WinFFI
  module ComCtl32
    if WINDOWS_VERSION >= :vista
      # Obsolete
      # HWND CreateStatusWindow(
      #   LONG    style,
      #   LPCTSTR lpszText,
      #   HWND    hwndParent,
      #   UINT    wID)
      encoded_function 'CreateStatusWindow', [:long, :string, :hwnd, :uint], :hwnd

      # void DrawStatusText(
      #   HDC     hdc,
      #   LPCRECT lprc,
      #   LPCTSTR pszText,
      #   UINT    uFlags)
      encoded_function 'DrawStatusText', [:hdc, RECT.ptr, :string, StatusBarTextFlag], :void

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