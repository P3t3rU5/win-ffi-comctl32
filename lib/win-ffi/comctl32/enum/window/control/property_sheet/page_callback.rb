module WinFFI
  module Comctl32
    PropertySheetPageCallback = enum :property_sheet_page_callback, [
        :ADDREF,  0,
        :RELEASE, 1,
        :CREATE,  2
    ]

    define_prefix(:PSPCB, PropertySheetPageCallback)
  end
end