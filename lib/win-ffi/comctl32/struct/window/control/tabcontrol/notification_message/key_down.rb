require 'win-ffi/user32/enum/interaction/keyboard/virtual_key_code'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmtckeydown
    class NMTCKEYDOWN < FFIAdditions::Struct
      layout hdr:   User32::NMHDR,
             wVKey: User32::VirtualKeyCode,
             flags: :uint
    end
  end
end