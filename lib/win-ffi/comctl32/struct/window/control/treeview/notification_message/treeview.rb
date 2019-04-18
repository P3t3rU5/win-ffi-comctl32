require 'win-ffi/core/struct/point'
require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative '../item'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagnmtvstateimagechanging
    class NMTREEVIEW < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def action; end
      def action=(v) end
      def itemOld; end
      def itemOld=(v) end
      def itemNew; end
      def itemNew=(v) end
      def ptDrag; end
      def ptDrag=(v) end

      layout hdr:     User32::NMHDR,
             action:  :uint,
             itemOld: TVITEM,
             itemNew: TVITEM,
             ptDrag:  POINT
    end
  end
end