require 'win-ffi/comctl32'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/ns-dpa_dsa-_dpastreaminfo
      class DPASTREAMINFO < FFIAdditions::Struct
        layout iPos:   :int,
               pvItem: :pointer
      end
    end
  end
end
