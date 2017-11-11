require 'win-ffi/comctl32'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775504(v=vs.85).aspx
      class DPASTREAMINFO < FFIAdditions::Struct
        layout iPos:       :int,
               pvItem: :pointer
      end
    end
  end
end
