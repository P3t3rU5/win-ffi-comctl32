require 'win-ffi/user32/struct/window/control/notification_message/header'
require_relative '../../../../../../../win-ffi/comctl32/struct/window/control/combobox_extended/extended_item'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmcomboboxexa
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmcomboboxexw
    class NMCOMBOBOXEX < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def ceItem; end
      def ceItem=(v) end

      layout hdr:    User32::NMHDR,
             ceItem: COMBOBOXEXITEM
    end
  end
end