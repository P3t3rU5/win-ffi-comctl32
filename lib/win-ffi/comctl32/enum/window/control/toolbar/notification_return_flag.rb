require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    ToolbarNotificationReturnFlag = enum :toolbar_notification_return_flag, [
        :HIDEHELP,     0x00000001,
        :ENDCUSTOMIZE, 0x00000002
    ]

    define_prefix(:TBNRF, ToolbarNotificationReturnFlag)
  end
end