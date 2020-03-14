require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative '../../../../../typedef/htreeitem'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtvstateimagechanging
    class NMTVSTATEIMAGECHANGING < FFIAdditions::Struct
      attr_accessor :hdr, :hti, :iOldStateImageIndex, :iNewStateImageIndex

      layout hdr:                 User32::NMHDR,
             hti:                 :htreeitem,
             iOldStateImageIndex: :int,
             iNewStateImageIndex: :int
    end
  end
end