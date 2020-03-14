module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'
    require_relative '../../../../../enum/window/control/header/item'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmhddispinfoa
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmhddispinfow
      class NMHDDISPINFO < FFIAdditions::Struct
        attr_accessor :hdr,
                      :iItem,
                      :mask,
                      :pszText,
                      :cchTextMax,
                      :iImage,
                      :lParam

        layout hdr:        User32::NMHDR,
               iItem:      :int,
               mask:       HeaderItem,
               pszText:    :string,
               cchTextMax: :int,
               iImage:     :int,
               lParam:     :lparam
      end
    end
  end
end