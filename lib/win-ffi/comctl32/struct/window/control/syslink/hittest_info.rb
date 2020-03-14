module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/point'
    require_relative 'item'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lhittestinfo
      class LHITTESTINFO < FFIAdditions::Struct
        attr_accessor :pt, :item

        layout pt:   POINT,
               item: LITEM
      end
    end
  end
end