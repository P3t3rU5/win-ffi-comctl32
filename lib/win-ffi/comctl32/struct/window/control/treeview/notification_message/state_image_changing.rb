require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative '../../../../../typedef/htreeitem'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmtvstateimagechanging
    class NMTVSTATEIMAGECHANGING < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def hti; end
      def hti=(v) end
      def iOldStateImageIndex; end
      def iOldStateImageIndex=(v) end
      def iNewStateImageIndex; end
      def iNewStateImageIndex=(v) end

      layout hdr:                 User32::NMHDR,
             hti:                 :htreeitem,
             iOldStateImageIndex: :int,
             iNewStateImageIndex: :int
    end
  end
end