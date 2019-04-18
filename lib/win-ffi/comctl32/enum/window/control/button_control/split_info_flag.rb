module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      ButtonControlSplitInfoFlag = enum :button_control_split_info_flag, [
        :GLYPH, 0x0001,
        :IMAGE, 0x0002,
        :STYLE, 0x0004,
        :SIZE,  0x0008
      ]

      define_prefix(:BCSIF, ButtonControlSplitInfoFlag)
    end
  end
end
