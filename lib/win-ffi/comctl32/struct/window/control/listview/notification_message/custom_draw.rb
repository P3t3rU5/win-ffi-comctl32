require 'win-ffi/core/struct/rect'
require 'win-ffi/user32/struct/window/control/notification_message/custom_draw'

require_relative '../../../../../enum/window/control/listview/group_align'

module WinFFI
  module Comctl32

    ListViewCustomDrawItem = enum :listview_custom_draw_item, [
        :ITEM,      0x00000000,
        :GROUP,     0x00000001,
        :ITEMSLIST, 0x00000002
    ]

    define_prefix(:LVCDI, ListViewCustomDrawItem)

    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmlvcustomdraw
    class NMLVCUSTOMDRAW < FFIAdditions::Struct
      def nmcd; end
      def nmcd=(v) end
      def clrText; end
      def clrText=(v) end
      def clrTextBk; end
      def clrTextBk=(v) end
      def iSubItem; end
      def iSubItem=(v) end

      buffer = {
          nmcd:      User32::NMCUSTOMDRAW,
          clrText:   :colorref,
          clrTextBk: :colorref,
          iSubItem:  :int
      }

      if WINDOWS_VERSION >= :xp
        def dwItemType; end
        def dwItemType=(v) end
        def clrFace; end
        def clrFace=(v) end
        def iIconEffect; end
        def iIconEffect=(v) end
        def iIconPhase; end
        def iIconPhase=(v) end
        def iPartId; end
        def iPartId=(v) end
        def iStateId; end
        def iStateId=(v) end
        def rcText; end
        def rcText=(v) end
        def uAlign; end
        def uAlign=(v) end

        buffer.merge(
            dwItemType:  ListViewCustomDrawItem,
            clrFace:     :colorref,
            iIconEffect: :int,
            iIconPhase:  :int,
            iPartId:     :int,
            iStateId:    :int,
            rcText:      RECT,
            uAlign:      ListViewGroupAlign
        )
      end

      layout buffer
    end
  end
end

