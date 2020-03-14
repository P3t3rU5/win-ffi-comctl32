require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtvcustomdraw
    class NMTVCUSTOMDRAW < FFIAdditions::Struct
      attr_accessor :hdr, :clrText, :clrTextBk, :iLevel

      layout hdr:       User32::NMHDR,
             clrText:   :colorref,
             clrTextBk: :colorref,
             iLevel:    :int
    end
  end
end