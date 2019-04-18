require 'win-ffi/core/struct/rect'
require 'win-ffi/user32/struct/window/message/pos'

module WinFFI
  module Comctl32
    class HDLAYOUT < FFIAdditions::Struct
      def prc; end
      def prc=(v) end
      def pwpos; end
      def pwpos=(v) end

      layout prc:   RECT.ptr, #  *prc,
             pwpos: User32::WINDOWPOS.ptr #  *pwpos
    end
  end
end