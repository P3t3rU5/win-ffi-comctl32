module WinFFI
  module Comctl32
    buffer = [
        :HORZ,     0x0000,
        :BUTTONS,  0x0002,
        :HOTTRACK, 0x0004,
        :HIDDEN,   0x0008,

        :DRAGDROP,  0x0040,
        :FULLDRAG,  0x0080,
        :FILTERBAR, 0x0100
    ]

    if WINDOWS_VERSION >= :xp
      buffer += [:FLAT, 0x0200]
      buffer += [:CHECKBOXES, 0x0400, :NOSIZING, 0x0800, :OVERFLOW, 0x1000] if WINDOWS_VERSION >= :vista
    end

    HeaderStyle = enum :header_style, buffer

    define_prefix(:HDS, HeaderStyle)
  end
end