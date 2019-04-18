module WinFFI
  module Comctl32
    PagerMessage = enum :pager_message, [
      :FIRST,          0x1400,
      :SETCHILD,       0x1401,
      :RECALCSIZE,     0x1402,
      :FORWARDMOUSE,   0x1403,
      :SETBKCOLOR,     0x1404,
      :GETBKCOLOR,     0x1405,
      :SETBORDER,      0x1406,
      :GETBORDER,      0x1407,
      :SETPOS,         0x1408,
      :GETPOS,         0x1409,
      :SETBUTTONSIZE,  0x140A,
      :GETBUTTONSIZE,  0x140B,
      :GETBUTTONSTATE, 0x140C,
      :GETDROPTARGET,  0x2004,
      :SETSCROLLINFO,  0x140D,
    ]

    define_prefix(:PGM, PagerMessage)
  end
end
