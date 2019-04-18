module WinFFI
  module Comctl32
    buffer = [
        :FIRST,               0xFF9C,
        :LAST,                0xFF39,

        :ITEMCHANGING,        0xFF9C,
        :ITEMCHANGED,         0xFF9B,
        :INSERTITEM,          0xFF9A,
        :DELETEITEM,          0xFF99,
        :DELETEALLITEMS,      0xFF98,


        :COLUMNCLICK,         0xFF94,
        :BEGINDRAG,           0xFF93,
        :BEGINRDRAG,          0xFF91,

        :ODCACHEHINT,         0xFF8F,

        :ITEMACTIVATE,        0xFF8E,
        :ODSTATECHANGED,      0xFF8D,

        :HOTTRACK,            0xFF87,

        :KEYDOWN,             0xFF65,

        :MARQUEEBEGIN,        0xFF64,
    ]

    buffer += if WinFFI.ascii?
      [
          :BEGINLABELEDIT,    0xFF97,
          :ENDLABELEDIT,      0xFF96,

          :ODFINDITEM,        0xFF68,

          :GETDISPINFO,       0xFF6A,
          :SETDISPINFO,       0xFF69,

          :GETINFOTIP,        0xFF63,

          :INCREMENTALSEARCH, 0xFF5E,
      ]
    else
      [
          :BEGINLABELEDIT,    0xFF51,
          :ENDLABELEDIT,      0xFF50,

          :ODFINDITEM,        0xFF4D,

          :GETDISPINFO,       0xFF4F,
          :SETDISPINFO,       0xFF4E,

          :GETINFOTIP,        0xFF62,

          :INCREMENTALSEARCH, 0xFF5D,
      ]
    end

    if WINDOWS_VERSION >= :xp
      buffer += [:BEGINSCROLL, 0xFF4C, :ENDSCROLL, 0xFF4B]
      if WINDOWS_VERSION >= :vista
        buffer += [
            :COLUMNDROPDOWN,      0xFF5C,
            :COLUMNOVERFLOWCLICK, 0xFF5A,
            :LINKCLICK,           0xFF48,
            :GETEMPTYMARKUP,      0xFF45
        ]
      end
    end

    ListviewNotification = enum :listview_notification, buffer

    define_prefix(:LVN, ListviewNotification)
  end
end