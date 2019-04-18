module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-_hd_itema
    HeaderFilterType = enum :header_filter_type, [
        :ISSTRING,   0x0000, # HD_ITEM.pvFilter points to a HD_TEXTFILTER
        :ISNUMBER,   0x0001, # HD_ITEM.pvFilter points to a INT
        :ISDATE,     0x0002, # HD_ITEM.pvFilter points to a DWORD (dos date)
        :HASNOVALUE, 0x8000  # clear the filter, by setting this bit
    ]

    define_prefix(:HDFT, HeaderFilterType)
  end
end