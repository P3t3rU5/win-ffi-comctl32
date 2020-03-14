module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-colormap
    class COLORMAP < FFIAdditions::Struct
      attr_accessor :from, :to

      layout from: :colorref,
             to:   :colorref
    end
  end
end