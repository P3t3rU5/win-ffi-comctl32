module WinFFI
  module Comctl32
    RebarStyle = enum :rebar_style, [
        :TOOLTIPS,        0x00000100,
        :VARHEIGHT,       0x00000200,
        :BANDBORDERS,     0x00000400,
        :FIXEDORDER,      0x00000800,
        :REGISTERDROP,    0x00001000,
        :AUTOSIZE,        0x00002000,
        :VERTICALGRIPPER, 0x00004000, # this always has the vertical gripper (default for horizontal mode)
        :DBLCLKTOGGLE,    0x00008000
    ]

    define_prefix(:RBS, RebarStyle)
  end
end