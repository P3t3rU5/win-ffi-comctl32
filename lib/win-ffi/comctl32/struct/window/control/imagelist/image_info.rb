require 'win-ffi/comctl32'

require 'win-ffi/core/struct/rect'

module WinFFI
  module Comctl32
    class IMAGEINFO < FFIAdditions::Struct
      layout hbmImage: :hbitmap,
             hbmMask:  :hbitmap,
             Unused1:      :int,
             Unused2:      :int,
             rcImage:      RECT
    end
  end
end