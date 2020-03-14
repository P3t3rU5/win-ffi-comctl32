module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-pbrange
    class PBRANGE < FFIAdditions::Struct
      attr_accessor :iLow, :iHigh

      layout iLow:  :int,
             iHigh: :int
    end
  end
end