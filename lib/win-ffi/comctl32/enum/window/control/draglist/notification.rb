module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      DragListNotification = enum :draglist_notification, [
          :BEGINDRAG,       0x0485,
          :DRAGGING,        0x0486,
          :DROPPED,         0x0487,
          :CANCELDRAG,      0x0488,

          :CURSORSET,            0,
          :STOPCURSOR,           1,
          :COPYCURSOR,           2,
          :MOVECURSOR,           3
      ]

      define_prefix(:DL, DragListNotification)
    end
  end
end