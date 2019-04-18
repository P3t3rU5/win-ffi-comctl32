module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-colorscheme
    class COLORSCHEME < FFIAdditions::Struct
      def dwSize; end
      def dwSize=(v) end
      def clrBtnHighlight; end
      def clrBtnHighlight=(v) end
      def clrBtnShadow; end
      def clrBtnShadow=(v) end

      layout dwSize:          :dword,
             clrBtnHighlight: :colorref, # highlight color,
             clrBtnShadow:    :colorref     # shadow color

      def initialize
        super
        self.dwSize = self.size
      end

      private :dwSize=
    end
  end
end