module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    require_relative '../../../../../typedef/htreeitem'

    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtvitemchange
    module Comctl32
      class NMTVITEMCHANGE < FFIAdditions::Struct
        attr_accessor :hdr,
                      :uChanged,
                      :hItem,
                      :uStateNew,
                      :uStateOld,
                      :lParam

        layout hdr:       User32::NMHDR,
               uChanged:  :uint,
               hItem:     :htreeitem,
               uStateNew: :uint,
               uStateOld: :uint,
               lParam:    :lparam
      end
    end
  end
end
