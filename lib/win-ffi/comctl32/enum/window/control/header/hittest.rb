module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-_hd_hittestinfo
      buffer = [
          :NOWHERE,         0x0001,
          :ONHEADER,        0x0002,
          :ONDIVIDER,       0x0004,
          :ONDIVOPEN,       0x0008,
          :ONFILTER,        0x0010,
          :ONFILTERBUTTON,  0x0020,
          :ABOVE,           0x0100,
          :BELOW,           0x0200,
          :TORIGHT,         0x0400,
          :TOLEFT,          0x0800
      ]

      buffer += [
          :ONITEMSTATEICON, 0x1000,
          :ONDROPDOWN,      0x2000,
          :ONOVERFLOW,      0x4000
      ] if WINDOWS_VERSION >= :vista

      HeaderHittest = enum :header_hittest, buffer

      define_prefix(:HHT, HeaderHittest)
    end
  end
end