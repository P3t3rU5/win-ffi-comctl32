module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      SyslinkMessage = enum :syslink_message, [
          :HITTEST,         0x0700,
          :GETIDEALHEIGHT,  0x0701,
          :SETITEM,         0x0702,
          :GETITEM,         0x0703,
          :GETIDEALSIZE,    0x0701
      ]

      define_prefix(:LM, SyslinkMessage)
    end
  end
end