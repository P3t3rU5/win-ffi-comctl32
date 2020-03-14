module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-colorscheme
    class COLORSCHEME < FFIAdditions::Struct
      attr_accessor :dwSize, :clrBtnHighlight, :clrBtnShadow

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