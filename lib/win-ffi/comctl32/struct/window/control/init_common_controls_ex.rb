require_relative '../../../enum/window/control/common_control/init'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-initcommoncontrolsex
    class INITCOMMONCONTROLSEX < FFIAdditions::Struct
      def dwSize; end
      def dwSize=(v) end
      def dwICC; end
      def dwICC=(v) end

      layout dwSize: :dword,            # size of this structure,
             dwICC:  InitCommonControls # flags indicating which classes to be initialized

      def initialize
        super
        self.dwSize = self.size
      end

      private :dwSize=
    end
  end
end
