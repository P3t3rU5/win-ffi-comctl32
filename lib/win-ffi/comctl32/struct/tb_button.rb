require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    class TBBUTTON < FFIAdditions::Struct
      layout :iBitmap,   :int,
             :idCommand, :int,
             :fsState,   :byte,
             :fsStyle,   :byte,
             :bReserved, [:byte, Architecture == 'i396' ? 2 : # padding for alignment, windows 32
             6], # padding for alignment, windows 64
             :dwData,    :dword,
             :iString,   :int
    end
  end
end