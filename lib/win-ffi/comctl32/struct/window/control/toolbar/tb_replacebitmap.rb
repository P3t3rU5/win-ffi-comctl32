require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    class TBREPLACEBITMAP < FFIAdditions::Struct
      layout hInstOld: :hinstance,
             nIDOld:   :uint,
             hInstNew: :hinstance,
             nIDNew:   :uint,
             nButtons: :int
    end
  end
end