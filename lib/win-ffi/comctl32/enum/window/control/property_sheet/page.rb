module WinFFI
  module Comctl32
    buffer = [
        :DEFAULT,      0x00000000,
        :DLGINDIRECT,  0x00000001,
        :USEHICON,     0x00000002,
        :USEICONID,    0x00000004,
        :USETITLE,     0x00000008,
        :RTLREADING,   0x00000010,

        :HASHELP,      0x00000020,
        :USEREFPARENT, 0x00000040,
        :USECALLBACK,  0x00000080,
        :PREMATURE,    0x00000400,

        :HIDEHEADER,        0x00000800,
        :USEHEADERTITLE,    0x00001000,
        :USEHEADERSUBTITLE, 0x00002000
    ]

    buffer += [:USEFUSIONCONTEXT, 0x00004000] if WINDOWS_VERSION >= :xp

    PropertySheetPage = enum :property_sheet_page, buffer

    define_prefix(:PSP, PropertySheetPage)
  end
end