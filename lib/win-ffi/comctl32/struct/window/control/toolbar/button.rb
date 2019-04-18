module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tbbutton
    class TBBUTTON < FFIAdditions::Struct
      def iBitmap; end
      def iBitmap=(v) end
      def idCommand; end
      def idCommand=(v) end
      def fsState; end
      def fsState=(v) end
      def fsStyle; end
      def fsStyle=(v) end
      def bReserved; end
      def bReserved=(v) end
      def dwData; end
      def dwData=(v) end
      def iString; end
      def iString=(v) end

      layout iBitmap:   :int,
             idCommand: :int,
             fsState:   :byte,
             fsStyle:   :byte,
             bReserved: [:byte, WinFFI.x64? ? 6 : # padding for alignment, windows 64
             2], # padding for alignment, windows 32
             dwData:    :dword_ptr,
             iString:   :int_ptr
    end
  end
end