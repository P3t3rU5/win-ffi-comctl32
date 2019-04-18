module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-tooltip-control-reference-messages
    buffer = [
        :ACTIVATE,        0x0401,
        :SETDELAYTIME,    0x0403,

        :RELAYEVENT,      0x0407,
        :GETTOOLCOUNT,    0x040D,
        :WINDOWFROMPOINT, 0x0410,
        :TRACKACTIVATE,   0x0411,
        :TRACKPOSITION,   0x0412,
        :SETTIPBKCOLOR,   0x0413,
        :SETTIPTEXTCOLOR, 0x0414,
        :GETDELAYTIME,    0x0415,
        :GETTIPBKCOLOR,   0x0416,
        :GETTIPTEXTCOLOR, 0x0417,
        :SETMAXTIPWIDTH,  0x0418,
        :GETMAXTIPWIDTH,  0x0419,
        :SETMARGIN,       0x041A,
        :GETMARGIN,       0x041B,
        :POP,             0x041C,
        :UPDATE,          0x041D,
        :GETBUBBLESIZE,   0x041E,
        :ADJUSTRECT,      0x041F
    ]

    buffer += if WinFFI.ascii?
      [
          :ADDTOOL,        0x0404,
          :DELTOOL,        0x0405,
          :NEWTOOLRECT,    0x0406,

          :GETTOOLINFO,    0x0408,
          :SETTOOLINFO,    0x0409,
          :HITTEST,        0x040A,
          :GETTEXT,        0x040B,
          :UPDATETIPTEXT,  0x040C,

          :ENUMTOOLS,      0x040E,
          :GETCURRENTTOOL, 0x040F,

          :SETTITLE,       0x0420,
      ]
    else
      [
          :ADDTOOL,       0x0432,
          :DELTOOL,       0x0433,
          :NEWTOOLRECT,   0x0434,

          :GETTOOLINFO,   0x0435,
          :SETTOOLINFO,   0x0436,
          :HITTEST,       0x0437,
          :GETTEXT,       0x0438,
          :UPDATETIPTEXT, 0x0439,

          :ENUMTOOLS,      0x043A,
          :GETCURRENTTOOL, 0x043B,

          :SETTITLE,       0x0421,
      ]
    end

    buffer += [:POPUP, 0x0422, :GETTITLE, 0x0423, :SETWINDOWTHEME,  0x200B] if WINDOWS_VERSION >= :xp

    TooltipMessage = enum :tooltip_message, buffer

    define_prefix(:TTM, TooltipMessage)
  end
end