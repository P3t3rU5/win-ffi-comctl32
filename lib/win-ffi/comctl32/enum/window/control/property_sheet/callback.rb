module WinFFI
  module Comctl32
    buffer = [
        :INITIALIZED, 1,
        :PRECREATE,   2,
    ]

    buffer += [:BUTTONPRESSED, 3] if WINDOWS_VERSION >= :xp

    PropertySheetCallback = enum :property_sheet_callback, buffer

    define_prefix(:PSCB, PropertySheetCallback)
  end
end