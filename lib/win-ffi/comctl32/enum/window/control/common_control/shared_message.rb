module WinFFI
  module Comctl32
    buffer =  [
        :FIRST,            0x2000,
        :SETBKCOLOR,       0x2001,
        :SETCOLORSCHEME,   0x2002,
        :GETCOLORSCHEME,   0x2003,
        :GETDROPTARGET,    0x2004,
        :SETUNICODEFORMAT, 0x2005,
        :GETUNICODEFORMAT, 0x2006,
        :SETVERSION,       0x2007,
        :GETVERSION,       0x2008,
        :SETNOTIFYWINDOW,  0x2009,
        :LAST,             0x2200
    ]

    buffer += [:SETWINDOWTHEME, 0x200b, :DPISCALE, 0x200c] if WINDOWS_VERSION >= :xp

    CommonControlSharedMessage = enum :common_control_shared_message, buffer

    define_prefix(:CCM, CommonControlSharedMessage)
  end
end