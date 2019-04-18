module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'

    require_relative '../../../enum/window/control/statusbar/text_flag'

    module Comctl32
      # Obsolete
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-createstatuswindowa
      # @param [Integer] style
      # @param [String] lpszText
      # @param [FFI::Pointer] hwndParent
      # @param [Integer] wID
      # @return [FFI::Pointer]
      def self.CreateStatusWindow(style, lpszText, hwndParent, wID) end
      encoded_function 'CreateStatusWindow', [:long, :string, :hwnd, :uint], :hwnd

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-drawstatustexta
      # @param [FFI::Pointer] hdc
      # @param [FFI::Pointer] lprc
      # @param [String] pszText
      # @param [Integer] uFlags
      # @return [nil]
      def self.DrawStatusText(hdc, lprc, pszText, uFlags) end
      encoded_function 'DrawStatusText', [:hdc, RECT.ptr, :string, StatusBarTextFlag], :void

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-menuhelp
      # @param [Integer] uMsg
      # @param [Integer] wParam
      # @param [Integer] lParam
      # @param [FFI::Pointer] hMainMenu
      # @param [FFI::Pointer] hInst
      # @param [FFI::Pointer] hwndStatus
      # @param [FFI::Pointer] lpwIDs
      # @return [nil]
      def self.MenuHelp(uMsg, wParam, lParam, hMainMenu, hInst, hwndStatus, lpwIDs) end
      attach_function 'MenuHelp', [:int, :wparam, :lparam, :hmenu, :hinstance, :hwnd, :pointer], :void
    end
  end
end