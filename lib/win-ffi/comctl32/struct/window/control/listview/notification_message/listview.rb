require 'win-ffi/core/struct/point'
require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmlistview
    class NMLISTVIEW < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def iItem; end
      def iItem=(v) end
      def iSubItem; end
      def iSubItem=(v) end
      def uNewState; end
      def uNewState=(v) end
      def uOldState; end
      def uOldState=(v) end
      def uChanged; end
      def uChanged=(v) end
      def ptAction; end
      def ptAction=(v) end
      def lParam; end
      def lParam=(v) end

      layout hdr:       User32::NMHDR,
             iItem:     :int,
             iSubItem:  :int,
             uNewState: :uint,
             uOldState: :uint,
             uChanged:  :uint,
             ptAction:  POINT,
             lParam:    :lparam
    end
  end
end

