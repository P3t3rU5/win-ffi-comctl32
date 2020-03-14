require 'win-ffi/core/struct/point'
require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative '../item'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtreeviewa
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtreevieww
    class NMTREEVIEW < FFIAdditions::Struct
      attr_accessor :hdr, :action, :itemOld, :itemNew, :ptDrag

      layout hdr:     User32::NMHDR,
             action:  :uint,
             itemOld: TVITEM,
             itemNew: TVITEM,
             ptDrag:  POINT
    end
  end
end