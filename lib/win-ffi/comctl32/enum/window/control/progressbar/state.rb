module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      ProgressBarState = enum :progress_bar_state, [
          :NORMAL, 0x0001,
          :ERROR,  0x0002,
          :PAUSED, 0x0003
      ]

      define_prefix(:PBST, ProgressBarState)
    end
  end
end
