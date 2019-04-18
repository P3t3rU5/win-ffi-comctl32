require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative '../../../../../enum/window/control/combobox_extended/notification_flag'
require_relative '../../../../../constant'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmcbeendedita
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmcbeendeditw
    class NMCBEENDEDIT < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def fChanged; end
      def fChanged=(v) end
      def iNewSelection; end
      def iNewSelection=(v) end
      def szText; end
      def szText=(v) end
      def iWhy; end
      def iWhy=(v) end

      layout hdr:           User32::NMHDR,
             fChanged:      :bool,
             iNewSelection: :int,
             szText:        [:wchar, CBEMAXSTRLEN],
             iWhy:          ComboboxExtendedNotificationFlag
    end
  end
end