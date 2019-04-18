module WinFFI
  module Comctl32
    StatusBarTextFlag = enum :statusbar_text_flag, [
        :OWNERDRAW,    0x1000,
        :NOBORDERS,    0x0100,
        :POPOUT,       0x0200,
        :RTLREADING,   0x0400,
        :NOTABPARSING, 0x0800
    ]

    define_prefix(:SBT, StatusBarTextFlag)
  end
end