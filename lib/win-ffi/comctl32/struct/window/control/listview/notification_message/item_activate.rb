require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/core/struct/point'

module WinFFI
  module Comctl32
    ListviewKeyFlag = enum :listview_key_flag, [:ALT, 0x0001, :CONTROL, 0x0002, :SHIFT, 0x0004]

    define_prefix(:LVKF, ListviewKeyFlag)

    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmitemactivate
    class NMITEMACTIVATE < FFIAdditions::Struct
      attr_accessor :hdr,
                    :iItem,
                    :iSubItem,
                    :uNewState,
                    :uOldState,
                    :uChanged,
                    :ptAction,
                    :lParam,
                    :uKeyFlags

      layout hdr:       User32::NMHDR,
             iItem:     :int,
             iSubItem:  :int,
             uNewState: :uint,
             uOldState: :uint,
             uChanged:  :uint,
             ptAction:  POINT,
             lParam:    :lparam,
             uKeyFlags: ListviewKeyFlag
    end
  end
end