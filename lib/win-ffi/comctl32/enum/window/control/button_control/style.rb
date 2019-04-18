module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      ButtonControlStyle = enum :button_control_style, [
        :SPLITBUTTON,    0x0000000C,
        :DEFSPLITBUTTON, 0x0000000D,
        :COMMANDLINK,    0x0000000E,
        :DEFCOMMANDLINK, 0x0000000F
      ]

      define_prefix(:BS, ButtonControlStyle)
    end
  end
end
