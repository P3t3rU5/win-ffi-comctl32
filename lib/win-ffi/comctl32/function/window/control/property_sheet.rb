module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../struct/window/control/property_sheet/page'
    require_relative '../../../struct/window/control/property_sheet/header'

    module Comctl32

      typedef :pointer, :hpropsheetpage

      # https://docs.microsoft.com/en-us/windows/desktop/api/prsht/nf-prsht-createpropertysheetpagea
      # @param [FFI::Pointer] lppsp
      # @return [FFI::Pointer]
      def self.CreatePropertySheetPage(lppsp) end
      attach_function 'CreatePropertySheetPage', [PROPSHEETPAGE.ptr], :hpropsheetpage

      # https://docs.microsoft.com/en-us/windows/desktop/api/prsht/nf-prsht-destroypropertysheetpage
      # @param [FFI::Pointer] hPSPage
      # @return [true, false]
      def self.DestroyPropertySheetPage(hPSPage) end
      attach_function 'DestroyPropertySheetPage', [:hpropsheetpage], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/prsht/nf-prsht-propertysheeta
      # @param [FFI::Pointer] lppsph
      # @return [Integer]
      def self.PropertySheet(lppsph) end
      encoded_function 'PropertySheet', [PROPSHEETHEADER.ptr], :int_ptr
    end
  end
end