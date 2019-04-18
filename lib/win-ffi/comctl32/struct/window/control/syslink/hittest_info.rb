module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/point'
    require_relative 'item'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taglhittestinfo
      class LHITTESTINFO < FFIAdditions::Struct
        def pt; end
        def pt=(v) end
        def item; end
        def item=(v) end

        layout pt:   POINT,
               item: LITEM
      end
    end
  end
end