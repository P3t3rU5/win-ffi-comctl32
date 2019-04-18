module WinFFI
  module Comctl32
    buffer = [
        :SETIMAGELIST,     0x0402,
        :GETIMAGELIST,     0x0403,
        :GETCOMBOCONTROL,  0x0406,
        :GETEDITCONTROL,   0x0407,
        :SETEXSTYLE,       0x0408,  # use  SETEXTENDEDSTYLE instead
        :DELETEITEM,       0x0144,
        :GETEXSTYLE,       0x0409, # use GETEXTENDEDSTYLE instead
        :GETEXTENDEDSTYLE, 0x0409,
        :SETEXTENDEDSTYLE, 0x040E,
        :HASEDITCHANGED,   0x040A,
        :SETUNICODEFORMAT, 0x2005,
        :GETUNICODEFORMAT, 0x2006,
    ]

    buffer += if WinFFI.ascii?
      [
          :INSERTITEM, 0x0401,
          :GETITEM,    0x0404,
          :SETITEM,    0x0405,
      ]
    else
      [
          :INSERTITEM, 0x040B,
          :SETITEM,    0x040C,
          :GETITEM,    0x040D,
      ]
    end

    buffer += [:SETWINDOWTHEME, 0x200B] if WINDOWS_VERSION >= :xp

    ComboboxExtendedMessage = enum :combobox_extended_message, buffer

    define_prefix(:CBEM, ComboboxExtendedMessage)
  end
end