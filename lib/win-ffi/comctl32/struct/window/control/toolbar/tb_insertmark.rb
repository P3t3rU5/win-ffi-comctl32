require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    class TBINSERTMARK < FFIAdditions::Struct
      layout iButton:   :int,
             dwFlags: :dword
    end
  end
end