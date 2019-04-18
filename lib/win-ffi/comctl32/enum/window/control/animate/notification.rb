module WinFFI
  module Comctl32
    AnimateControlNotification = enum :animate_control_notification, [:START, 1, :STOP, 2]

    define_prefix(:ACN, AnimateControlNotification)
  end
end