module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-udaccel
      class UDACCEL < FFIAdditions::Struct
        attr_accessor :nSec, :nInc

        layout nSec: :uint,
               nInc: :uint
      end
    end
  end
end