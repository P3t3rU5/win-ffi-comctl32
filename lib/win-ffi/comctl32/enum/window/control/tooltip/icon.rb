module WinFFI
  module Comctl32
    buffer = [:NONE, 0, :INFO, 1, :WARNING, 2, :ERROR, 3]

    buffer += [:INFO_LARGE, 4, :WARNING_LARGE, 5, :ERROR_LARGE, 6] if WINDOWS_VERSION >= :vista

    TooltipIcon = enum :tooltip_icon, buffer

    define_prefix(:TTI, TooltipIcon)
  end
end