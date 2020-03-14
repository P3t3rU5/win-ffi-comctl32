module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tbbuttoninfoa
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tbbuttoninfow
    class TBBUTTONINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :dwMask,
                    :idCommand,
                    :iImage,
                    :fsState,
                    :fsStyle,
                    :cx,
                    :lParam,
                    :pszText,
                    :cchText

      layout cbSize:    :uint,
             dwMask:    :dword,
             idCommand: :int,
             iImage:    :int,
             fsState:   :byte,
             fsStyle:   :byte,
             cx:        :word,
             lParam:    :dword_ptr,
             pszText:   :string,
             cchText:   :int

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize=
    end
  end
end