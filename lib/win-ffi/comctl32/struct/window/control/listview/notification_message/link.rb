require 'win-ffi/user32/struct/window/control/notification_message/header'
require_relative '../../syslink/item'

module WinFFI
  if WINDOWS_VERSION >= :vista

    module Comctl32
      #if (NTDDI_VERSION >= NTDDI_VISTA)
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmlvlink
      class NMLVLINK < FFIAdditions::Struct
        attr_accessor :hdr, :link, :iItem, :iSubItem

        layout hdr:      User32::NMHDR,
               link:     LITEM,
               iItem:    :int,
               iSubItem: :int
      end
    end
  end
end