module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-_udaccel
      class UDACCEL < FFIAdditions::Struct
        def nSec; end
        def nSec=(v) end
        def nInc; end
        def nInc=(v) end

        layout nSec: :uint,
               nInc: :uint
      end
    end
  end
end