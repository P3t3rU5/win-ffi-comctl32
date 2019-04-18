module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tbreplacebitmap
    class TBREPLACEBITMAP < FFIAdditions::Struct
      def hInstOld; end
      def hInstOld=(v) end
      def nIDOld; end
      def nIDOld=(v) end
      def hInstNew; end
      def hInstNew=(v) end
      def nIDNew; end
      def nIDNew=(v) end
      def nButtons; end
      def nButtons=(v) end

      layout hInstOld: :hinstance,
             nIDOld:   :uint_ptr,
             hInstNew: :hinstance,
             nIDNew:   :uint_ptr,
             nButtons: :int
    end
  end
end