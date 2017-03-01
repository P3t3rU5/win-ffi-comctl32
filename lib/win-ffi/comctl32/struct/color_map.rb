require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    class COLORMAP < FFIAdditions::Struct
      layout from: :colorref,
             to:   :colorref
    end
  end
end