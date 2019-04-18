module WinFFI
  module Comctl32
    CommonControlStyle = enum :common_control_style, [
        :TOP,           0x00000001,
        :NOMOVEY,       0x00000002,
        :BOTTOM,        0x00000003,
        :NORESIZE,      0x00000004,
        :NOPARENTALIGN, 0x00000008,
        :ADJUSTABLE,    0x00000020,
        :NODIVIDER,     0x00000040,
        :VERT,          0x00000080,

        :LEFT,          0x00000081,
        :NOMOVEX,       0x00000082,
        :RIGHT,         0x00000083,
    ]

    define_prefix(:CCS, CommonControlStyle)
  end
end