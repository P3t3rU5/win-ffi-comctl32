module WinFFI
  module Comctl32
    PagerGetButtonState = enum :pager_get_button_state, [:TOPORLEFT, 0, :BOTTOMORRIGHT, 1]

    define_prefix(:PGB, PagerGetButtonState)
  end
end
