require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    class TBBUTTONINFO < FFIAdditions::Struct
      layout :cbSize,    :uint,
             :dwMask,    :dword,
             :idCommand, :int,
             :iImage,    :int,
             :fsState,   :byte,
             :fsStyle,   :byte,
             :cx,        :word,
             :lParam,    :dword,
             :pszText,   :string,
             :cchText,   :int

      def initialize
        super
        self.cbSize = self.size
      end
    end
  end
end