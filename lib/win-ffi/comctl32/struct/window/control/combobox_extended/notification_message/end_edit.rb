require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative '../../../../../enum/window/control/combobox_extended/notification_flag'
require_relative '../../../../../constant'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmcbeendedita
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmcbeendeditw
    class NMCBEENDEDIT < FFIAdditions::Struct
      attr_accessor :hdr,
                    :fChanged,
                    :iNewSelection,
                    :szText,
                    :iWhy

      layout hdr:           User32::NMHDR,
             fChanged:      :bool,
             iNewSelection: :int,
             szText:        [:wchar, CBEMAXSTRLEN],
             iWhy:          ComboboxExtendedNotificationFlag
    end
  end
end