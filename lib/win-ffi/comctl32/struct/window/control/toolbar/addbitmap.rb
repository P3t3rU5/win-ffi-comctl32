module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tbaddbitmap
    class TBADDBITMAP < FFIAdditions::Struct
      def hInst; end
      def hInst=(v) end
      def nID; end
      def nID=(v) end

      layout hInst: :hinstance,
             nID:   :uint_ptr
    end
  end
end