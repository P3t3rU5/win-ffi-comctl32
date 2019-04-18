require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/core/struct/point'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmmouse
    class NMMOUSE < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def dwItemSpec; end
      def dwItemSpec=(v) end
      def dwItemData; end
      def dwItemData=(v) end
      def pt; end
      def pt=(v) end
      def dwHitInfo; end
      def dwHitInfo=(v) end

      layout hdr:        User32::NMHDR,
             dwItemSpec: :dword_ptr,
             dwItemData: :dword_ptr,
             pt:         POINT,
             dwHitInfo:  :lparam
    end

    class NMCLICK < NMMOUSE; end
  end
end
