require 'win-ffi/user32/struct/window/control/notification_message/header'
require 'win-ffi/core/struct/point'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmmouse
    class NMMOUSE < FFIAdditions::Struct
      attr_accessor :hdr,
                    :dwItemSpec,
                    :dwItemData,
                    :pt,
                    :dwHitInfo

      layout hdr:        User32::NMHDR,
             dwItemSpec: :dword_ptr,
             dwItemData: :dword_ptr,
             pt:         POINT,
             dwHitInfo:  :lparam
    end

    class NMCLICK < NMMOUSE; end
  end
end
