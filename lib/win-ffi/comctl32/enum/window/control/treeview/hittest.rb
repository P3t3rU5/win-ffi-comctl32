module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagtvhittestinfo
    TreeViewHitTest = enum :treeview_hittest, [
        :NOWHERE,         0x0001,
        :ONITEMICON,      0x0002,
        :ONITEMLABEL,     0x0004,
        :ONITEM,          0x0046,
        :ONITEMINDENT,    0x0008,
        :ONITEMBUTTON,    0x0010,
        :ONITEMRIGHT,     0x0020,
        :ONITEMSTATEICON, 0x0040,

        :ABOVE,           0x0100,
        :BELOW,           0x0200,
        :TORIGHT,         0x0400,
        :TOLEFT,          0x0800
    ]

    define_prefix(:TVHT, TreeViewHitTest)
  end
end
