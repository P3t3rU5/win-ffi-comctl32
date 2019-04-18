module WinFFI
  module Comctl32
    TrackbarCustomDraw = enum :trackbar_custom_draw, [:TICS, 0x0001, :THUMB, 0x0002, :CHANNEL, 0x0003]

    define_prefix(:TBCD, TrackbarCustomDraw)
  end
end