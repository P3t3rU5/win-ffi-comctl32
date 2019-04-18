module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      buffer = [:FOCUSED, 0x00000001, :ENABLED, 0x00000002, :VISITED, 0x00000004]

      buffer += [
          :HOTTRACK,      0x00000008,
          :DEFAULTCOLORS, 0x00000010
      ] if WINDOWS_VERSION >= :vista

      LinkItemState = enum :link_item_style, buffer

      define_prefix(:LIS, LinkItemState)
    end
  end
end