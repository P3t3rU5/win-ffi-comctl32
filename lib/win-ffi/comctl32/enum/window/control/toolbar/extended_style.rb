module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      buffer = [
          :DRAWDDARROWS,       0x00000001,
          :MIXEDBUTTONS,       0x00000008,
          :HIDECLIPPEDBUTTONS, 0x00000010,
          :MULTICOLUMN,        0x00000002,
          :VERTICAL,           0x00000004
      ]

      buffer += [:DOUBLEBUFFER, 0x00000080] if WINDOWS_VERSION >= :xp

      ToolbarExtendedStyle = enum :toolbar_extended_style, buffer

      define_prefix(:TBSTYLE_EX, ToolbarExtendedStyle)
    end
  end
end