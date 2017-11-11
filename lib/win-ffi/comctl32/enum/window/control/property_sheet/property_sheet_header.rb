require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    buffer =[
        :DEFAULT,           0x00000000,
        :PROPTITLE,         0x00000001,
        :USEHICON,          0x00000002,
        :USEICONID,         0x00000004,
        :PROPSHEETPAGE,     0x00000008,
        :WIZARDHASFINISH,   0x00000010,
        :WIZARD,            0x00000020,
        :USEPSTARTPAGE,     0x00000040,
        :NOAPPLYNOW,        0x00000080,
        :USECALLBACK,       0x00000100,
        :HASHELP,           0x00000200,
        :MODELESS,          0x00000400,
        :RTLREADING,        0x00000800,
        :WIZARDCONTEXTHELP, 0x00001000,
        :WIZARD97,          0x01000000,
        :WATERMARK,         0x00008000,
        :USEHBMWATERMARK,   0x00010000,
        :USEHPLWATERMARK,   0x00020000,
        :STRETCHWATERMARK,  0x00040000,
        :HEADER,            0x00080000,

        :USEHBMHEADER,      0x00100000,
        :USEPAGELANG,       0x00200000,

        :WIZARD_LITE,       0x00400000,
        :NOCONTEXTHELP,     0x02000000
    ]

    if WINDOWS_VERSION >= :vista
      buffer += [
          :AEROWIZARD,    0x00004000,

          :RESIZABLE,    0x04000000,
          :HEADERBITMAP, 0x08000000,
          :NOMARGIN,     0x10000000
      ]
    end

    PropertySheetHeader = enum :property_sheet_header, buffer

    define_prefix(:PSH, PropertySheetHeader)
  end
end