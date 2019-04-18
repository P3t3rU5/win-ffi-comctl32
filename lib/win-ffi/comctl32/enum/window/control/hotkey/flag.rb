module WinFFI
  module Comctl32
    HotkeyFlag = enum :hotkey_flag, [
        :SHIFT,   0x01,
        :CONTROL, 0x02,
        :ALT,     0x04,

        :EXT,     0x08
    ]

    define_prefix(:HOTKEYF, HotkeyFlag)
  end
end