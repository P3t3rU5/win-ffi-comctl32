module WinFFI
  module Comctl32
    ListviewArrange = enum :listview_arrange, [
        :DEFAULT,    0x0000,
        :ALIGNLEFT,  0x0001,
        :ALIGNTOP,   0x0002,
        :SNAPTOGRID, 0x0005,
    ]

    define_prefix(:LVA, ListviewArrange)
  end
end