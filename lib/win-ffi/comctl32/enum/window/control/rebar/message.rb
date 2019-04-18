module WinFFI
  module Comctl32
    buffer = [
      :DELETEBAND,   0x0402,
      :GETBARINFO,   0x0403,
      :SETBARINFO,   0x0404,
      :SETPARENT,    0x0407,
      :HITTEST,      0x0408,
      :GETRECT,      0x0409,
      :GETBANDCOUNT, 0x040C,
      :GETROWCOUNT,  0x040D,
      :GETROWHEIGHT, 0x040E,
      :IDTOINDEX,    0x0410,
      :GETTOOLTIPS,  0x0411,
      :SETTOOLTIPS,  0x0412,
      :SETBKCOLOR,   0x0413,
      :GETBKCOLOR,   0x0414,
      :SETTEXTCOLOR, 0x0415,
      :GETTEXTCOLOR, 0x0416,

      :SIZETORECT,   0x0417,

      :BEGINDRAG,    0x0418,
      :ENDDRAG,      0x0419,
      :DRAGMOVE,     0x041A,
      :GETBARHEIGHT, 0x041B,
      :MINIMIZEBAND, 0x041E,
      :MAXIMIZEBAND, 0x041F,

      :GETBANDBORDERS, 0x0422,
      :SHOWBAND,       0x0423,
      :SETPALETTE,     0x0425,
      :GETPALETTE,     0x0426,
      :MOVEBAND,       0x0427,

      #if (_WIN32_IE >= 0x0600)
      :SETEXTENDEDSTYLE, 0x0429,
      :GETEXTENDEDSTYLE, 0x042A,

      :PUSHCHEVRON,      0x042B,

      :SETCOLORSCHEME,   0x2002,
      :GETCOLORSCHEME,   0x2003,

      :GETDROPTARGET,    0x2004,
      :SETUNICODEFORMAT, 0x2005,
      :GETUNICODEFORMAT, 0x2006,
    ]

    buffer += if WinFFI.ascii?
      [:GETBANDINFO, 0x041D, :INSERTBAND,  0x0401, :SETBANDINFO, 0x0406]
    else
      [:GETBANDINFO, 0x041C, :INSERTBAND,  0x040A, :SETBANDINFO, 0x040B]
    end

    if WINDOWS_VERSION >= :xp
      buffer += [:GETBANDMARGINS, 0x0428, :SETWINDOWTHEME, 0x200B]
      buffer += [:SETBANDWIDTH, 0x042C] if WINDOWS_VERSION >= :vista
    end

    # https://msdn.microsoft.com/en-us/library/ee499383.aspx
    RebarMessage = enum :rebar_message, buffer

    define_prefix(:RB, RebarMessage)
  end
end
