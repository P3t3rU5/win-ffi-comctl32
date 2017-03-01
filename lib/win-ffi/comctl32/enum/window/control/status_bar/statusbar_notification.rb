require 'win-ffi/comctl32'
require 'ffi-additions/integer'

using FFIAdditions::IntegerUtils

module WinFFI
  module ComCtl32
    StatusbarNotification = enum :statusbar_notification, [:SIMPLEMODECHANGE, -880.unsigned]
    define_prefix(:SBN, StatusbarNotification)
  end
end