module WinFFI
  module Comctl32
    buffer = [:SMOOTH, 0x01, :VERTICAL, 0x04]

    if WINDOWS_VERSION >= :xp
      buffer += [:MARQUEE, 0x08]
      buffer += [:SMOOTHREVERSE, 0x10] if WINDOWS_VERSION >= :vista
    end

    ProgressBarStyle = enum :progress_bar_style, buffer

    define_prefix(:PBS, ProgressBarStyle)
  end
end