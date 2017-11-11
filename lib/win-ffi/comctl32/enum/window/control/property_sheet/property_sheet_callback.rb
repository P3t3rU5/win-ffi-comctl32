require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    buffer = [
        :INITIALIZED, 1,
        :PRECREATE,   2,
    ]

    if WINDOWS_VERSION >= :xp
      buffer += [:BUTTONPRESSED, 3]
    end

    PropertySheetCallback = enum :property_sheet_callback, buffer

    define_prefix(:PSCB, PropertySheetCallback)
  end
end