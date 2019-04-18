module WinFFI
  require 'win-ffi/core/struct/rect'
  require_relative '../../../../enum/window/control/tooltip/flag'

  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagtoolinfoa
    class TTTOOLINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def uFlags; end
      def uFlags=(v) end
      def hwnd; end
      def hwnd=(v) end
      def uId; end
      def uId=(v) end
      def rect; end
      def rect=(v) end
      def hinst; end
      def hinst=(v) end
      def lpszText; end
      def lpszText=(v) end
      def lParam; end
      def lParam=(v) end

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
        def lpReserved; end
        def lpReserved=(v) end

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