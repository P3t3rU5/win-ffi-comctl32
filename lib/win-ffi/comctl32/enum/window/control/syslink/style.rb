module WinFFI
  module Comctl32
    buffer = [:TRANSPARENT, 0x0001, :IGNORERETURN, 0x0002]

    buffer += [
        :NOPREFIX, 0x0004,
        :USEVISUALSTYLE, 0x0008,
        :USECUSTOMTEXT, 0x0010,
        :RIGHT, 0x0020
    ] if WINDOWS_VERSION >= :vista

    SyslinkStyle = enum :syslink_style, buffer

    define_prefix(:LWS, SyslinkStyle)
  end
end