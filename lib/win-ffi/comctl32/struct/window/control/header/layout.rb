require 'win-ffi/core/struct/rect'
require 'win-ffi/user32/struct/window/message/pos'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-hdlayout
    class HDLAYOUT < FFIAdditions::Struct
      attr_accessor :prc, :pwpos

      layout prc:   RECT.ptr, #  *prc,
             pwpos: User32::WINDOWPOS.ptr #  *pwpos
    end
  end
end