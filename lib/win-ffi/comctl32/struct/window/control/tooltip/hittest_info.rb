module WinFFI
  require 'win-ffi/core/struct/point'
  require_relative 'info'

  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tthittestinfoa
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tthittestinfow
    class TTHITTESTINFO < FFIAdditions::Struct
      def hwnd; end
      def hwnd=(v) end
      def pt; end
      def pt=(v) end
      def ti; end
      def ti=(v) end

      layout hwnd: :hwnd,
             pt:   POINT,
             ti:   TTTOOLINFO
    end
  end
end