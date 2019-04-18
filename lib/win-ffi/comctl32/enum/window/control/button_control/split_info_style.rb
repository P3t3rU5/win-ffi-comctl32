module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      ButtonControlSplitInfoStyle = enum :button_control_split_info_style, [
        :NOSPLIT,   0x0001,
        :STRETCH,   0x0002,
        :ALIGNLEFT, 0x0004,
        :IMAGE,     0x0008
      ]

      define_prefix(:BCSS, ButtonControlSplitInfoStyle)
    end
  end
end
