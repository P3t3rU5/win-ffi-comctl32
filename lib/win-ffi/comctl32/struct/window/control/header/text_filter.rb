module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-hd_textfiltera
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-hd_textfilterw
    class HD_TEXTFILTER < FFIAdditions::Struct
      attr_accessor :pszTest, :cchTextMax

      layout pszText:    :string,
             cchTextMax: :int
    end
  end
end