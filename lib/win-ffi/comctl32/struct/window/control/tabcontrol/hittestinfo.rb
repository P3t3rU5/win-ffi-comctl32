require 'win-ffi/core/struct/point'

require_relative '../../../../../../win-ffi/comctl32/enum/window/control/tabcontrol/hit_test'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tchittestinfo
    class TCHITTESTINFO < FFIAdditions::Struct
      layout pt:    POINT,
             flags: TabControlHitTest
    end
  end
end