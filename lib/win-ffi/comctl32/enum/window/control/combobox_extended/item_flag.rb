module WinFFI
  module Comctl32
    ComboboxExtendedItemFlag = enum :combobox_extended_item_flag, [
        :TEXT,              0x00000001,
        :IMAGE,             0x00000002,
        :SELECTEDIMAGE,     0x00000004,
        :OVERLAY,           0x00000008,
        :INDENT,            0x00000010,
        :LPARAM,            0x00000020
    ]

    define_prefix(:CBEIF, ComboboxExtendedItemFlag)
  end
end