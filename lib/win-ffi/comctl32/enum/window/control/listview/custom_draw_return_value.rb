module WinFFI
  module Comctl32
    ListViewCustomDrawReturnValue = enum :list_view_custom_draw_return_value, [
        :NOSELECT,     0x00010000,
        :NOGROUPFRAME, 0x00020000
    ]

    define_prefix(:LVCDRF, ListViewCustomDrawReturnValue)
  end
end