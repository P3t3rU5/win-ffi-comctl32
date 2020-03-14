require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative '../button'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtbsave
    class NMTBSAVE < FFIAdditions::Struct
      attr_accessor :hdr,
                    :pData,
                    :pCurrent,
                    :cbData,
                    :iItem,
                    :cButtons,
                    :tbButton

      layout hdr:      User32::NMHDR,
             pData:    :pointer,
             pCurrent: :pointer,
             cbData:   :uint,
             iItem:    :int,
             cButtons: :int,
             tbButton: TBBUTTON
    end
  end
end