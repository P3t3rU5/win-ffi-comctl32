module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      TrackbarTipSide = enum :trackbar_tip_side, [:TOP, 0, :LEFT, 1, :BOTTOM, 2, :RIGHT, 3]

      define_prefix(:TBTS, TrackbarTipSide)
    end
  end
end