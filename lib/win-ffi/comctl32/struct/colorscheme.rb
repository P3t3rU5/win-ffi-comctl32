require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    class COLORSCHEME < FFIAdditions::Struct
      layout dwSize:          :dword,
             clrBtnHighlight: :colorref, # highlight color,
             clrBtnShadow:    :colorref     # shadow color

      def initialize
        self.dwSize = self.size
      end
    end
  end
end