module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-_hd_itema
      buffer = [
          :LEFT,        0x0000, # Same as LVCFMT_LEFT
          :RIGHT,       0x0001, # Same as LVCFMT_RIGHT
          :CENTER,      0x0002, # Same as LVCFMT_CENTER
          :JUSTIFYMASK, 0x0003, # Same as LVCFMT_JUSTIFYMASK
          :RTLREADING,  0x0004, # Same as LVCFMT_LEFT

          :BITMAP,          0x2000,
          :STRING,          0x4000,
          :OWNERDRAW,       0x8000, # Same as LVCFMT_COL_HAS_IMAGES
          :IMAGE,           0x0800, # Same as LVCFMT_IMAGE
          :BITMAP_ON_RIGHT, 0x1000 # Same as LVCFMT_BITMAP_ON_RIGHT

      #if (NTDDI_VERSION >= NTDDI_VISTA)
      ]

      if WINDOWS_VERSION >= :xp
        buffer += [:SORTUP, 0x0400, :SORTDOWN, 0x0200]
        buffer += [
            :CHECKBOX,    0x0040,
            :CHECKED,     0x0080,
            :FIXEDWIDTH,  0x0100,    # Can't resize the column; same as LVCFMT_FIXED_WIDTH
            :SPLITBUTTON, 0x1000000  # Column is a split button; same as LVCFMT_SPLITBUTTON
        ] if WINDOWS_VERSION >= :vista
      end

      HeaderFormat = enum :header_format, buffer

      define_prefix(:HDF, HeaderFormat)
    end
  end
end