require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtbhotitem
    class NMTBHOTITEM < FFIAdditions::Struct
      attr_accessor :hdr, :idOld, :idNew, :dwFlags

      layout hdr:     User32::NMHDR,
             idOld:   :int,
             idNew:   :int,
             dwFlags: :dword
    end
  end
end