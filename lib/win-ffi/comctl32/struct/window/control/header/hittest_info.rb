module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/point'
    require_relative '../../../../enum/window/control/header/hittest'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-hdhittestinfo
      class HDHITTESTINFO < FFIAdditions::Struct
        attr_accessor :pt, :flags, :iItem

        layout pt:    POINT,
               flags: HeaderHittest,
               iItem: :int
      end
    end
  end
end