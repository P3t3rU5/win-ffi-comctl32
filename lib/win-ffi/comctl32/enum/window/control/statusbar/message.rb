module WinFFI
  module Comctl32
    buffer = if WinFFI.ascii?
      [
          :SETTEXT,       0x0401,
          :GETTEXT,       0x0402,
          :GETTEXTLENGTH, 0x0403,
          :SETTIPTEXT,    0x0410,
          :GETTIPTEXT,    0x0412
      ]
    else
      [
          :SETTEXT,       0x040B,
          :GETTEXT,       0x040D,
          :GETTEXTLENGTH, 0x040C,
          :SETTIPTEXT,    0x0411,
          :GETTIPTEXT,    0x0413
      ]
    end

    buffer += [
        :SETPARTS,         0x0404,
        :GETPARTS,         0x0406,
        :GETBORDERS,       0x0407,
        :SETMINHEIGHT,     0x0408,
        :SIMPLE,           0x0409,
        :GETRECT,          0x040A,
        :ISSIMPLE,         0x040E,
        :SETICON,          0x040F,
        :GETICON,          0x0414,
        :SETUNICODEFORMAT, 0x2005,
        :GETUNICODEFORMAT, 0x2006,
        :SETBKCOLOR,       0x2001
    ]

    StatusBarMessage = enum :statusbar_message, buffer

    define_prefix(:SB, StatusBarMessage)
  end
end