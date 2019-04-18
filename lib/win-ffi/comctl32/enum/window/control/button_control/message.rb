module WinFFI
  if WINDOWS_VERSION >= :xp
    module Comctl32
      buffer = [
        :FIRST,         0x1600,

        :GETIDEALSIZE,  0x1601,
        :SETIMAGELIST,  0x1602,
        :GETIMAGELIST,  0x1603,
        :SETTEXTMARGIN, 0x1604,
        :GETTEXTMARGIN, 0x1605,
      ]

      buffer += [
        :SETDROPDOWNSTATE, 0x1606,
        :SETSPLITINFO,     0x1607,
        :SETNOTE,          0x1609,
        :GETNOTE,          0x160A,
        :GETNOTELENGTH,    0x160B,
        :GETSPLITINFO,     0x1608,
        :SETSHIELD,        0x160C
      ] if WINDOWS_VERSION >= :vista

      ButtonControlMessage = enum :button_control_message, buffer

      define_prefix(:BCM, ButtonControlMessage)
    end
  end
end
