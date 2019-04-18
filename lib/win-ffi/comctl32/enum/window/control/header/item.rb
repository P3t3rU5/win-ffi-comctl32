module WinFFI
  module Comctl32
    buffer = [
        :WIDTH,      0x0001,
        :HEIGHT,     0x0001,
        :TEXT,       0x0002,
        :FORMAT,     0x0004,
        :LPARAM,     0x0008,
        :BITMAP,     0x0010,
        :IMAGE,      0x0020,
        :DI_SETITEM, 0x0040,
        :ORDER,      0x0080,
        :FILTER,     0x0100
    ]

    buffer += [:STATE, 0x0200] if WINDOWS_VERSION >= :vista

    HeaderItem = enum :header_item, buffer

    define_prefix(:HDI, HeaderItem)
  end
end