require 'win-ffi/core/struct/point'

module WinFFI
  module Comctl32
    class HDHITTESTINFO < FFIAdditions::Struct
      layout :pt,    POINT,
             :flags, :uint,
             :iItem, :int
    end
  end
end
