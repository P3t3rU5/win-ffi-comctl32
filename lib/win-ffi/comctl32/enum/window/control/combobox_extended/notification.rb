module WinFFI
  module Comctl32
    buffer = [
        :FIRST,      0xFCE0,
        :LAST,       0xFCC2,
        :INSERTITEM, 0xFCDF,
        :DELETEITEM, 0xFCDE,
        :BEGINEDIT,  0xFCDC,
    ]

    buffer += if WinFFI.ascii?
      [
          :ENDEDIT,     0xFCDB,
          :GETDISPINFO, 0xFCE0,
          :DRAGBEGIN,   0xFCD8,
      ]
    else
      [
          :ENDEDIT,     0xFCDA,
          :GETDISPINFO, 0xFCD9,
          :DRAGBEGIN,   0xFCD7,
      ]
    end

    ComboboxExtendedNotification = enum :combobox_extended_notification, buffer

    define_prefix(:CBEN, ComboboxExtendedNotification)
  end
end