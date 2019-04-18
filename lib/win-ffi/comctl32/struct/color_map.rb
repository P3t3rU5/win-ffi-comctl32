module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-colormap
    class COLORMAP < FFIAdditions::Struct
      def from; end
      def from=(v) end
      def to; end
      def to=(v) end

      layout from: :colorref,
             to:   :colorref
    end
  end
end