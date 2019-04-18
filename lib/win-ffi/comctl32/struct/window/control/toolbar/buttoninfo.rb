module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tbbuttoninfoa
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tbbuttoninfow
    class TBBUTTONINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def dwMask; end
      def dwMask=(v) end
      def idCommand; end
      def idCommand=(v) end
      def iImage; end
      def iImage=(v) end
      def fsState; end
      def fsState=(v) end
      def fsStyle; end
      def fsStyle=(v) end
      def cx; end
      def cx=(v) end
      def lParam; end
      def lParam=(v) end
      def pszText; end
      def pszText=(v) end
      def cchText; end
      def cchText=(v) end

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