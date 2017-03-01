require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    class PBRANGE < FFIAdditions::Struct
      layout iLow:  :int,
             iHigh: :int
    end
  end
end