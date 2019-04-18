module WinFFI
  if WINDOWS_VERSION >= :vista
    LinkItemFlag = enum :link_item_flag, [
        :ITEMINDEX, 0x00000001,
        :STATE,     0x00000002,
        :ITEMID,    0x00000004,
        :URL,       0x00000008
    ]

    define_prefix(:LIF, LinkItemFlag)
  end
end