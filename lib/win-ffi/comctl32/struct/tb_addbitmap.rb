require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    class TBADDBITMAP < FFIAdditions::Struct
      layout :hInst, :hinstance,
             :nID,   :uint
    end
  end
end