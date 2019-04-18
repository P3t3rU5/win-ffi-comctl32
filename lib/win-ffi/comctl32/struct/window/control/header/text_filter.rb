module WinFFI
  module Comctl32
    class HD_TEXTFILTER < FFIAdditions::Struct
      layout pszText:    :string,
             cchTextMax: :int
    end
  end
end