module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-trackbar-control-reference-messages
      TrackbarMessage = enum :trackbar_message, [
          :GETPOS,              0x0400,
          :GETRANGEMIN,         0x0401,
          :GETRANGEMAX,         0x0402,
          :GETTIC,              0x0403,
          :SETTIC,              0x0404,
          :SETPOS,              0x0405,
          :SETRANGE,            0x0406,
          :SETRANGEMIN,         0x0407,
          :SETRANGEMAX,         0x0408,
          :CLEARTICS,           0x0409,
          :SETSEL,              0x040A,
          :SETSELSTART,         0x040B,
          :SETSELEND,           0x040C,
          :GETPTICS,            0x040E,
          :GETTICPOS,           0x040F,
          :GETNUMTICS,          0x0410,
          :GETSELSTART,         0x0411,
          :GETSELEND,           0x0412,
          :CLEARSEL,            0x0413,
          :SETTICFREQ,          0x0414,
          :SETPAGESIZE,         0x0415,
          :GETPAGESIZE,         0x0416,
          :SETLINESIZE,         0x0417,
          :GETLINESIZE,         0x0418,
          :GETTHUMBRECT,        0x0419,
          :GETCHANNELRECT,      0x041A,
          :SETTHUMBLENGTH,      0x041B,
          :GETTHUMBLENGTH,      0x041C,
          :SETTOOLTIPS,         0x041D,
          :GETTOOLTIPS,         0x041E,
          :SETTIPSIDE,          0x041F,

          :SETBUDDY,            0x0420,
          :GETBUDDY,            0x0421,
          :SETPOSNOTIFY,        0x0422,
          :SETUNICODEFORMAT,    0x2005,
          :GETUNICODEFORMAT,    0x2006,
      ]

      define_prefix(:TBM, TrackbarMessage)
    end
  end
end