module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-up-down-control-reference-messages
      UpDownMessage = enum :updown_message, [
          :SETRANGE,            0x0465,
          :GETRANGE,            0x0466,
          :SETPOS,              0x0467,
          :GETPOS,              0x0468,
          :SETBUDDY,            0x0469,
          :GETBUDDY,            0x046A,
          :SETACCEL,            0x046B,
          :GETACCEL,            0x046C,
          :SETBASE,             0x046D,
          :GETBASE,             0x046E,
          :SETRANGE32,          0x046F,
          :GETRANGE32,          0x0470,

          :SETUNICODEFORMAT,    0x2005,
          :GETUNICODEFORMAT,    0x2006,

          :SETPOS32,            0x0471,
          :GETPOS32,            0x0472,
      ]

      define_prefix(:UDM, UpDownMessage)
    end
  end
end
