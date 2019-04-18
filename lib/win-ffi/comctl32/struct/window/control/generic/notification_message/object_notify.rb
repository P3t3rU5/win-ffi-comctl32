require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmobjectnotify
    class NMOBJECTNOTIFY < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def iItem; end
      def iItem=(v) end
      def piid; end
      def piid=(v) end
      def pObject; end
      def pObject=(v) end
      def hResult; end
      def hResult=(v) end
      def dwFlags; end
      def dwFlags=(v) end

      layout hdr:     User32::NMHDR,
             iItem:   :int,
             piid:    :pointer,
             pObject: :pointer,
             hResult: :hresult,
             dwFlags: :dword
    end
  end
end
