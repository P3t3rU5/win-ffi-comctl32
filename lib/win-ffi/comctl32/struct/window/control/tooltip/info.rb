module WinFFI
  require 'win-ffi/core/struct/rect'
  require_relative '../../../../enum/window/control/tooltip/flag'

  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tttoolinfoa
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tttoolinfow
    class TTTOOLINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :uFlags,
                    :hwnd,
                    :uId,
                    :rect,
                    :hinst,
                    :lpszText,
                    :lParam

      buffer = {
          cbSize:   :uint,
          uFlags:   TooltipInfoFlag,
          hwnd:     :hwnd,
          uId:      :uint,
          rect:     RECT,
          hinst:    :hinstance,
          lpszText: :string,
          lParam:   :lparam
      }

      if WINDOWS_VERSION >= :xp
        attr_accessor :lpReserved

        buffer.merge(lpReserved: :pointer)
      end

      layout buffer

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize=
    end
  end
end