module WinFFI
  module Comctl32
    DPASearch = enum 'dpa_search', [:SORTED, 0x0001, :INSERTBEFORE, 0x0002, :INSERTAFTER,  0x0004]

    define_prefix(:DPAS, DPASearch)
  end
end