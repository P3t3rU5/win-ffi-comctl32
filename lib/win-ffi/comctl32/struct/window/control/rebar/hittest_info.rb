module WinFFI
  require 'win-ffi/core/struct/point'
  require_relative '../../../../enum/window/control/rebar/hittest'

  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-rbhittestinfo
    class RBHITTESTINFO < FFIAdditions::Struct
      def pt; end
      def pt=(v) end
      def flags; end
      def flags=(v) end
      def iBand; end
      def iBand=(v) end

      layout pt:    POINT,
             flags: RebarHittest,
             iBand: :int
    end
  end
end