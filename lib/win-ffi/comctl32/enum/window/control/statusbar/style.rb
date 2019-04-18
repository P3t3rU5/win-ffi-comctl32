module WinFFI
  module Comctl32
    StatusBarStyle = enum :statusbar_style, [:SIZEGRIP, 0x0100, :TOOLTIPS, 0x0800]

    define_prefix(:SBARS, StatusBarStyle)
  end
end