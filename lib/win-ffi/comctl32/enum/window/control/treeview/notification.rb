module WinFFI
  module Comctl32
    buffer = [
        :FIRST,        0xFFFFFE70,
        :LAST,         0xFFFFFE0D,

        :KEYDOWN,      0xFFFFFE64,

        :SINGLEEXPAND, 0xFFFFFE61
    ]

    buffer += if WinFFI.ascii?
      [
          :SELCHANGING,    0xFFFFFE6F,
          :SELCHANGED,     0xFFFFFE6E,
          :GETDISPINFO,    0xFFFFFE6D,
          :SETDISPINFO,    0xFFFFFE6C,

          :ITEMEXPANDING,  0xFFFFFE6B,
          :ITEMEXPANDED,   0xFFFFFE6A,
          :BEGINDRAG,      0xFFFFFE69,
          :BEGINRDRAG,     0xFFFFFE68,
          :DELETEITEM,     0xFFFFFE67,
          :BEGINLABELEDIT, 0xFFFFFE66,
          :ENDLABELEDIT,   0xFFFFFE65,

          :GETINFOTIP,     0xFFFFFE63
      ]
    else
      [
          :SELCHANGING,    0xFFFFFE3E,
          :SELCHANGED,     0xFFFFFE3D,
          :GETDISPINFO,    0xFFFFFE3C,
          :SETDISPINFO,    0xFFFFFE3B,

          :ITEMEXPANDING,  0xFFFFFE3A,
          :ITEMEXPANDED,   0xFFFFFE39,
          :BEGINDRAG,      0xFFFFFE38,
          :BEGINRDRAG,     0xFFFFFE37,
          :DELETEITEM,     0xFFFFFE36,
          :BEGINLABELEDIT, 0xFFFFFE35,
          :ENDLABELEDIT,   0xFFFFFE34,

          :GETINFOTIP,     0xFFFFFE62
      ]
    end

    if WINDOWS_VERSION >= :vista
      buffer += [:ASYNCDRAW, 0xFFFFFE5C]

      buffer += if WinFFI.ascii?
        [
            :ITEMCHANGING, 0xFFFFFE60,
            :ITEMCHANGED,  0xFFFFFE5E
        ]
      else
        [
            :ITEMCHANGING, 0xFFFFFE5F,
            :ITEMCHANGED,  0xFFFFFE5D
        ]
      end
    end

    TreeViewNotification = enum :treeview_notification, buffer

    define_prefix(:TVN, TreeViewNotification)
  end
end
