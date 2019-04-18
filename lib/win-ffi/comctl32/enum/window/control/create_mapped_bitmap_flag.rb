module WinFFI
  module Comctl32
    CreateMappedBitmapFlag = enum :create_mapped_bitmap_flag, [:MASKED, 0x02]

    define_prefix(:CMB, CreateMappedBitmapFlag)
  end
end
