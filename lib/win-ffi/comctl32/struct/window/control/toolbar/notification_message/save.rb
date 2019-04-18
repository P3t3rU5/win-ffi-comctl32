require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative '../button'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmtbsave
    class NMTBSAVE < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def pData; end
      def pData=(v) end
      def pCurrent; end
      def pCurrent=(v) end
      def cbData; end
      def cbData=(v) end
      def iItem; end
      def iItem=(v) end
      def cButtons; end
      def cButtons=(v) end
      def tbButton; end
      def tbButton=(v) end

      layout hdr: User32::NMHDR,
             pData:    :pointer,
             pCurrent: :pointer,
             cbData:   :uint,
             iItem:    :int,
             cButtons: :int,
             tbButton: TBBUTTON
    end
  end
end