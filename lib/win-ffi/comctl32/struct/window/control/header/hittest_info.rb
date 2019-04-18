module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/point'
    require_relative '../../../../enum/window/control/header/hittest'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-_hd_hittestinfo
      class HDHITTESTINFO < FFIAdditions::Struct
        def pt; end
        def pt=(v) end
        def flags; end
        def flags=(v) end
        def iItem; end
        def iItem=(v) end

        layout pt:    POINT,
               flags: HeaderHittest,
               iItem: :int
      end
    end
  end
end