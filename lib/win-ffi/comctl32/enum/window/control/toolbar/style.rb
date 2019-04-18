require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    ToolBarStyle = enum :toolbar_style, [
        :BUTTON,          0x0000, # obsolete; use BTNS_BUTTON instead
        :SEP,             0x0001, # obsolete; use BTNS_SEP instead
        :CHECK,           0x0002, # obsolete; use BTNS_CHECK instead
        :GROUP,           0x0004, # obsolete; use BTNS_GROUP instead
        :CHECKGROUP,      0x0006, # obsolete; use BTNS_CHECKGROUP instead
        :DROPDOWN,        0x0008, # obsolete; use BTNS_DROPDOWN instead
        :AUTOSIZE,        0x0010, # obsolete; use BTNS_AUTOSIZE instead
        :NOPREFIX,        0x0020, # obsolete; use BTNS_NOPREFIX instead
        :TOOLTIPS,        0x0100,
        :WRAPABLE,        0x0200,
        :ALTDRAG,         0x0400,
        :FLAT,            0x0800,
        :LIST,            0x1000,
        :CUSTOMERASE,     0x2000,
        :REGISTERDROP,    0x4000,
        :TRANSPARENT,     0x8000
    ]

    define_prefix(:TBSTYLE, ToolBarStyle)
  end
end