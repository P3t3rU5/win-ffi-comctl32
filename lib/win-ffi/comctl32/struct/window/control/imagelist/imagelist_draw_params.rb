require 'win-ffi/comctl32'

require 'win-ffi/comctl32/typedef/himagelist'

module WinFFI
  module Comctl32
    class IMAGELISTDRAWPARAMS < FFIAdditions::Struct
      buffer = [
          :cbSize,   :dword,
          :himl,     :himagelist,
          :i,        :int,
          :hdcDst,   :hdc,
          :x,        :int,
          :y,        :int,
          :cx,       :int,
          :cy,       :int,
          :xBitmap,  :int, # x offest from the upperleft of bitmap,
          :yBitmap,  :int, # y offset from the upperleft of bitmap,
          :rgbBk,    :colorref,
          :rgbFg,    :colorref,
          :fStyle,   :uint,
          :dwRop,    :dword,
      ]

      buffer += [
          :fState,   :dword,
          :Frame,    :dword,
          :crEffect, :colorref
      ]if ARCHITECTURE == 'i386'

      layout *buffer

      def initialize
        super
        self.cbSize = self.size
      end
    end
  end
end
