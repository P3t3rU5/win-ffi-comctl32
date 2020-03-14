module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'
    require_relative '../item'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmheadera
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmheaderw
      class NMHEADER < FFIAdditions::Struct
        attr_accessor :hdr, :iItem, :iButton, :pitem

        layout hdr:     User32::NMHDR,
               iItem:   :int,
               iButton: :int,
               pitem:   HDITEM.ptr #  *pitem
      end
    end
  end
end
