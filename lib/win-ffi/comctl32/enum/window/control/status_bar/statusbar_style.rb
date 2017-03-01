require 'win-ffi/comctl32'

module WinFFI
  module ComCtl32
    StatusBarStyle = enum :statusbar_style, [
        :SIZEGRIP, 0x0100,
        :TOOLTIPS, 0x0800,
    ]

    define_prefix(:SBARS, StatusBarStyle)
  end
end