require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    buffer = [
        :SMOOTH,   0x01,
        :VERTICAL, 0x04
    ]

    if WindowsVersion >= :xp
      buffer += [:MARQUEE, 0x08]
      buffer += [:SMOOTHREVERSE, 0x10] if WindowsVersion >= :vista
    end

    ProgressBarStyle = enum :progress_bar_style, buffer

    define_prefix(:PBS, ProgressBarStyle)
  end
end