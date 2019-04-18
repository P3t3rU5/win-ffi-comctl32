module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-pbrange
    class PBRANGE < FFIAdditions::Struct
      def iLow; end
      def iLow=(v); end
      def iHigh; end
      def iHigh=(v); end

      layout iLow:  :int,
             iHigh: :int
    end
  end
end