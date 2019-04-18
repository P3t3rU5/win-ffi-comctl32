require 'win-ffi/core/struct/rect'

require_relative '../../struct/window/control/init_common_controls_ex'

module WinFFI
  module Comctl32
    if WINDOWS_VERSION >= :vista
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-geteffectiveclientrect
      # @param [FFI::Pointer] hWnd
      # @param [FFI::Pointer] lprc
      # @param [FFI::Pointer] lpInfo
      def self.GetEffectiveClientRect(hWnd, lprc, lpInfo) end
      attach_function 'GetEffectiveClientRect', [:hwnd, RECT.ptr, :pointer], :void

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-getmuilanguage
      # @return [Integer]
      def self.GetMUILanguage; end
      attach_function 'GetMUILanguage', [], :langid

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775695(v=vs.85).aspx
      def self.InitCommonControls; end
      attach_function 'InitCommonControls', [], :void

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775697(v=vs.85).aspx
      # @param [FFI::Pointer] lpInitCtrls
      # @return [true, false]
      def self.InitCommonControlsEx(lpInitCtrls) end
      attach_function 'InitCommonControlsEx', [INITCOMMONCONTROLSEX.ptr], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-initmuilanguage
      # @param [Integer] uiLang
      def self.InitMUILanguage(uiLang) end
      attach_function 'InitMUILanguage', [:langid], :void

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-showhidemenuctl
      # @param [FFI::Pointer] hWnd
      # @param [Integer] uFlags
      # @param [FFI::Pointer] lpInfo
      # @return [true, false]
      def self.ShowHideMenuCtl(hWnd, uFlags, lpInfo) end
      attach_function 'ShowHideMenuCtl', [:hwnd, :uint_ptr, :pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-str_setptrw
      # @param [FFI::Pointer] ppszCurrent
      # @param [String] pszNew
      # @return [true, false]
      def self.Str_SetPtrW(ppszCurrent, pszNew) end
      attach_function 'Str_SetPtrW', [:pointer, :string], :bool
    end
  end
end