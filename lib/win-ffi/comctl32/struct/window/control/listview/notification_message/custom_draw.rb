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

    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmlvcustomdraw
    class NMLVCUSTOMDRAW < FFIAdditions::Struct
      attr_accessor :nmcd, :clrText, :clrTextBk, :iSubItem

      buffer = {
          nmcd:      User32::NMCUSTOMDRAW,
          clrText:   :colorref,
          clrTextBk: :colorref,
          iSubItem:  :int
      }

      if WINDOWS_VERSION >= :xp
        attr_accessor :dwItemType,
                      :clrFace,
                      :iIconEffect,
                      :iIconPhase,
                      :iPartId,
                      :iStateId,
                      :rcText,
                      :uAlign

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

