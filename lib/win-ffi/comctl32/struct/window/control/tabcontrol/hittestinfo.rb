require 'win-ffi/core/struct/point'

require_relative '../../../../../../win-ffi/comctl32/enum/window/control/tabcontrol/hit_test'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tchittestinfo
    class TCHITTESTINFO < FFIAdditions::Struct
      attr_accessor :pt, :flags

      layout pt:    POINT,
             flags: TabControlHitTest
    end
  end
end