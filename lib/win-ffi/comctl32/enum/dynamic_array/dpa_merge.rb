module WinFFI
  module Comctl32
    DPAMerge = enum :dpa_merge, [:SORTED, 0x00000001, :NORMAL, 0x00000002, :UNION, 0x00000004, :INTERSECT, 0x00000008]

    define_prefix(:DPAM, DPAMerge)
  end
end