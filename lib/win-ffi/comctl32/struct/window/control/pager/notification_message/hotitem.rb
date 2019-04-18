require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmpghotitem
    class NMPGHOTITEM < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def idOld; end
      def idOld=(v) end
      def idNew; end
      def idNew=(v) end
      def dwFlags; end
      def dwFlags=(v) end

      layout hdr:     User32::NMHDR,
             idOld:   :int,
             idNew:   :int,
             dwFlags: :dword
    end
  end
end
