module WinFFI
  module Comctl32
    IPAddressMessage = enum :ip_address_message, [
      :CLEARADDRESS, 0x0464,
      :SETADDRESS,   0x0465,
      :GETADDRESS,   0x0466,
      :SETRANGE,     0x0467,
      :SETFOCUS,     0x0468,
      :ISBLANK,      0x0469
    ]

    define_prefix(:IPM, IPAddressMessage)
  end
end
