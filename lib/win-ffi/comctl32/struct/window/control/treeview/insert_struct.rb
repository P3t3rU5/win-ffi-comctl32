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
      def itemex; end
      def itemex=(v) end
      def item; end
      def item=(v) end

      layout itemex: TVITEMEX,
             item:     TVITEM
    end

    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tvinsertstructa
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tvinsertstructw
    class TVINSERTSTRUCT < FFIAdditions::Struct
      def hParent; end
      def hParent=(v) end
      def hInsertAfter; end
      def hInsertAfter=(v) end
      def s; end
      def s=(v) end

      layout hParent:      :htreeitem,
             hInsertAfter: TreeviewInsert,
             s:            TVINSERTSTRUCT_UNION
    end
  end
end