require_relative 'item'
require_relative 'item_extended'

module WinFFI
  module Comctl32
    # (HTREEITEM)(ULONG_PTR)
    TreeviewInsert = enum :treeview_insert, [
        :ROOT, -0x10000,
        :FIRST,-0x0FFFF,
        :LAST, -0x0FFFE,
        :SORT, -0x0FFFD
    ]

    define_prefix(:TVI, TreeviewInsert)

    class TVINSERTSTRUCT_UNION < FFIAdditions::Union
      attr_accessor :itemex, :item

      layout itemex: TVITEMEX,
             item:     TVITEM
    end

    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tvinsertstructa
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tvinsertstructw
    class TVINSERTSTRUCT < FFIAdditions::Struct
      attr_accessor :hParent, :hInsertAfter, :s

      layout hParent:      :htreeitem,
             hInsertAfter: TreeviewInsert,
             s:            TVINSERTSTRUCT_UNION
    end
  end
end