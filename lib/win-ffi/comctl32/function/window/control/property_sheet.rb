require 'win-ffi/comctl32/struct/window/control/property_sheet/prop_sheet_page'
require 'win-ffi/comctl32/struct/window/control/property_sheet/prop_sheet_header'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32

      typedef :pointer, :hpropsheetpage

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760807(v=vs.85).aspx
      # HPROPSHEETPAGE CreatePropertySheetPage(LPCPROPSHEETPAGE lppsp)
      attach_function 'CreatePropertySheetPage', [PROPSHEETPAGE.ptr], :hpropsheetpage

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760809%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
      # BOOL DestroyPropertySheetPage(HPROPSHEETPAGE hPSPage)
      attach_function 'DestroyPropertySheetPage', [:hpropsheetpage], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760811(v=vs.85).aspx
      # INT_PTR PropertySheet(LPCPROPSHEETHEADER lppsph)
      encoded_function 'PropertySheet', [PROPSHEETHEADER.ptr], :int
    end
  end
end