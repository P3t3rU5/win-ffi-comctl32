require 'win-ffi/user32/enum/interaction/keyboard/virtual_key_code'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtckeydown
    class NMTCKEYDOWN < FFIAdditions::Struct
      attr_accessor :hdr, :wVKey, :flags

      layout hdr:   User32::NMHDR,
             wVKey: User32::VirtualKeyCode,
             flags: :uint
    end
  end
end