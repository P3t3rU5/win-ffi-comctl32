module WinFFI
  module Comctl32
    buffer = [
      :FIRST,         0x1000,
      :GETSYSTEMTIME, 0x1001,
      :SETSYSTEMTIME, 0x1002,
      :GETRANGE,      0x1003,
      :SETRANGE,      0x1004,
      :SETMCCOLOR,    0x1006,
      :GETMCCOLOR,    0x1007,
      :GETMONTHCAL,   0x1008,
      :SETMCFONT,     0x1009,
      :GETMCFONT,     0x100A
    ]

    buffer += [:SETFORMAT, WinFFI.ascii? ? 0x1005 : 0x1032]

    buffer += [
      :SETMCSTYLE,            0x100B,
      :GETMCSTYLE,            0x100C,
      :CLOSEMONTHCAL,         0x100D,
      :GETDATETIMEPICKERINFO, 0x100E,
      :GETIDEALSIZE,          0x100F,
    ]

    DateTimePickMessage = enum :date_time_pick_message, buffer

    define_prefix(:DTM, DateTimePickMessage)
  end
end
