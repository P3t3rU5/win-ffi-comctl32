module WinFFI
  require 'win-ffi/core/struct/point'
  require_relative '../../../../enum/window/control/rebar/hittest'

  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-rbhittestinfo
    class RBHITTESTINFO < FFIAdditions::Struct
      attr_accessor :pt, :flags, :iBand

      layout pt:    POINT,
             flags: RebarHittest,
             iBand: :int
    end
  end
end