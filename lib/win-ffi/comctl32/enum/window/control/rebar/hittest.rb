module WinFFI
  module Comctl32
    RebarHittest = enum :rebar_hittest, [
        :NOWHERE,  0x0001,
        :CAPTION,  0x0002,
        :CLIENT,   0x0003,
        :GRABBER,  0x0004,
        :CHEVRON,  0x0008,
        #if (_WIN32_IE >= 0x0600)
        :SPLITTER, 0x0010
    ]

    define_prefix(:RBHT, RebarHittest)
  end
end