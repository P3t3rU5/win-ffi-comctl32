require 'win-ffi/comctl32/enum/window/control/init_common_controls'

module WinFFI
  module Comctl32
    class INITCOMMONCONTROLSEX < FFIAdditions::Struct
      layout dwSize: :dword,    # size of this structure,
             dwICC:  InitCommonControls # flags indicating which classes to be initialized

      def initialize
        self.dwSize = self.size
      end
    end
  end
end