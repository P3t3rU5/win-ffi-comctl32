module WinFFI
  module Comctl32
    buffer = [
        :NOEDGES,        0x00010000,
        :HILITEHOTTRACK, 0x00020000,
        :NOOFFSET,       0x00040000,
        :NOMARK,         0x00080000,
        :NOETCHEDEFFECT, 0x00100000,

        :BLENDICON,      0x00200000,
        :NOBACKGROUND,   0x00400000
    ]

    buffer += [:USECDCOLORS, 0x00800000] if WINDOWS_VERSION >= :vista

    ToolBarCustomDrawReturnFlag = enum :ToolbarCustomDrawReturnFlag, buffer

    define_prefix(:TBCDRF, ToolBarCustomDrawReturnFlag)
  end
end