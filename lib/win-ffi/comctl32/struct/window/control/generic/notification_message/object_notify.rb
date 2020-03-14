require 'win-ffi/user32/struct/window/control/notification_message/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmobjectnotify
    class NMOBJECTNOTIFY < FFIAdditions::Struct
      attr_accessor :hdr,
                    :iItem,
                    :piid,
                    :pObject,
                    :hResult,
                    :dwFlags

      layout hdr:     User32::NMHDR,
             iItem:   :int,
             piid:    :pointer,
             pObject: :pointer,
             hResult: :hresult,
             dwFlags: :dword
    end
  end
end
