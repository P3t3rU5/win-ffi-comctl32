require 'ffi-additions/integer'

using FFIAdditions::IntegerUtils

module WinFFI
  module Comctl32
    StatusbarNotification = enum :statusbar_notification, [
        :FIRST,            0xFFFFFC90,
        :LAST,             0xFFFFFC7D,
        :SIMPLEMODECHANGE, 0xFFFFFC90
    ]

    define_prefix(:SBN, StatusbarNotification)
  end
end