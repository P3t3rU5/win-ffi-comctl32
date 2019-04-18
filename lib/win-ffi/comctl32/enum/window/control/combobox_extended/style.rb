module WinFFI
  module Comctl32
    buffer = [
        :NOEDITIMAGE,       0x00000001,
        :NOEDITIMAGEINDENT, 0x00000002,
        :PATHWORDBREAKPROC, 0x00000004,
        :NOSIZELIMIT,       0x00000008,
        :CASESENSITIVE,     0x00000010
    ]

    buffer += [:TEXTENDELLIPSIS, 0x00000020] if WINDOWS_VERSION >= :vista

    ComboboxExtendedStyle = enum :combobox_extended_style, buffer

    define_prefix(:CBES_EX, ComboboxExtendedStyle)
  end
end