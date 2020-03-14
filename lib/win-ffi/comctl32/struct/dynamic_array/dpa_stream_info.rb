module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/dpa_dsa/ns-dpa_dsa-dpastreaminfo
      class DPASTREAMINFO < FFIAdditions::Struct
        attr_accessor :iPos, :pvItem

        layout iPos:   :int,
               pvItem: :pointer
      end
    end
  end
end
