module WinFFI
  module Comctl32
    ToolBarState = enum :toolbar_state, [
        :CHECKED,       0x01,
        :PRESSED,       0x02,
        :ENABLED,       0x04,
        :HIDDEN,        0x08,
        :INDETERMINATE, 0x10,
        :WRAP,          0x20,
        :ELLIPSES,      0x40,
        :MARKED,        0x80,
    ]

    define_prefix(:TBSTATE, ToolBarState)
  end
end