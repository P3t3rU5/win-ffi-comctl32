require 'win-ffi/comctl32'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32

      ToolbarGetBitmapFlags = enum :toolbar_get_bitmap_flags, [:LARGE, 0x0001]

      buffer = [
        :ENABLEBUTTON,          0x0401,
        :CHECKBUTTON,           0x0402,
        :PRESSBUTTON,           0x0403,
        :HIDEBUTTON,            0x0404,
        :INDETERMINATE,         0x0405,
        :MARKBUTTON,            0x0406,
        :ISBUTTONENABLED,       0x0409,
        :ISBUTTONCHECKED,       0x040A,
        :ISBUTTONPRESSED,       0x040B,
        :ISBUTTONHIDDEN,        0x040C,
        :ISBUTTONINDETERMINATE, 0x040D,
        :ISBUTTONHIGHLIGHTED,   0x040E,
        :SETSTATE,              0x0411,
        :GETSTATE,              0x0412,
        :ADDBITMAP,             0x0413,

        :DELETEBUTTON,         0x0416,
        :GETBUTTON,            0x0417,
        :BUTTONCOUNT,          0x0418,
        :COMMANDTOINDEX,       0x0419,

        :CUSTOMIZE,            0x041B,

        :GETITEMRECT,          0x041D,
        :BUTTONSTRUCTSIZE,     0x041E,
        :SETBUTTONSIZE,        0x041F,
        :SETBITMAPSIZE,        0x0420,
        :AUTOSIZE,             0x0421,
        :GETTOOLTIPS,          0x0423,
        :SETTOOLTIPS,          0x0424,
        :SETPARENT,            0x0425,
        :SETROWS,              0x0427,
        :GETROWS,              0x0428,
        :SETCMDID,             0x042A,
        :CHANGEBITMAP,         0x042B,
        :GETBITMAP,            0x042C,

        :REPLACEBITMAP,        0x042E,
        :SETINDENT,            0x042F,
        :SETIMAGELIST,         0x0430,
        :GETIMAGELIST,         0x0431,
        :LOADIMAGES,           0x0432,
        :GETRECT,              0x0433,
        :SETHOTIMAGELIST,      0x0434,
        :GETHOTIMAGELIST,      0x0435,
        :SETDISABLEDIMAGELIST, 0x0436,
        :GETDISABLEDIMAGELIST, 0x0437,
        :SETSTYLE,             0x0438,
        :GETSTYLE,             0x0439,
        :GETBUTTONSIZE,        0x043A,
        :SETBUTTONWIDTH,       0x043B,
        :SETMAXTEXTROWS,       0x043C,
        :GETTEXTROWS,          0x043D,

        :GETOBJECT,            0x043D,
        :GETHOTITEM,           0x0447,
        :SETHOTITEM,           0x0448,
        :SETANCHORHIGHLIGHT,   0x0449,
        :GETANCHORHIGHLIGHT,   0x044A,

        :GETINSERTMARK,        0x044F,
        :SETINSERTMARK,        0x0450,
        :INSERTMARKHITTEST,    0x0451,
        :MOVEBUTTON,           0x0452,
        :GETMAXSIZE,           0x0453,
        :SETEXTENDEDSTYLE,     0x0454,
        :GETEXTENDEDSTYLE,     0x0455,
        :GETPADDING,           0x0456,
        :SETPADDING,           0x0457,
        :SETINSERTMARKCOLOR,   0x0458,
        :GETINSERTMARKCOLOR,   0x0459,

        :SETCOLORSCHEME,       0x2002,
        :GETCOLORSCHEME,       0x2003,
        :SETUNICODEFORMAT,     0x2005,
        :GETUNICODEFORMAT,     0x2006,

        :GETBITMAPFLAGS,       0x0429,

        :HITTEST,              0x0445,

        :SETDRAWTEXTFLAGS,     0x0446,

        :SETBOUNDINGSIZE,      0x045D,
        :SETHOTITEM2,          0x045E,
        :HASACCELERATOR,       0x045F,
        :SETLISTGAP,           0x0460,
        :GETIMAGELISTCOUNT,    0x0462,
        :GETIDEALSIZE,         0x0463,

        :TRANSLATEACCELERATOR, 0x0461,
        :GETMETRICS,           0x0465,
        :SETMETRICS,           0x0466
      ]

      buffer += if WinFFI.ascii?
        [
            :GETBUTTONTEXT,  0x042D,
            :SAVERESTORE,    0x041A,
            :ADDSTRING,      0x041C,
            :MAPACCELERATOR, 0x044B,

            :GETBUTTONINFO,  0x0441,
            :SETBUTTONINFO,  0x0442,

            :ADDBUTTONS,     0x0414,
            :INSERTBUTTON,   0x0415,

            :GETSTRING,      0x45C
        ]
      else
        [
            :GETBUTTONTEXT,  0x044B,
            :SAVERESTORE,    0x044C,
            :ADDSTRING,      0x044D,
            :MAPACCELERATOR, 0x045A,

            :GETBUTTONINFO,  0x043F,
            :SETBUTTONINFO,  0x0440,

            :INSERTBUTTON,   0x0443,
            :ADDBUTTONS,     0x0444,

            :GETSTRING,      0x45B
        ]
      end

      if WINDOWS_VERSION >= :xp
        buffer += [:SETWINDOWTHEME, 0x200B]
        buffer += [
            :GETITEMDROPDOWNRECT, 0x0467,
            :SETPRESSEDIMAGELIST, 0x0468,
            :GETPRESSEDIMAGELIST, 0x0469
        ] if WINDOWS_VERSION >= :vista
      end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ff486063(v=vs.85).aspx
      ToolbarMessage = enum :toolbar_message, buffer

      define_prefix(:TB, ToolbarMessage)
    end
  end
end