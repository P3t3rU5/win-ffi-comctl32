require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    class DLLVERSIONINFO < FFIAdditions::Struct
      layout cbSize:         :dword,
             dwMajorVersion: :dword,
             dwMinorVersion: :dword,
             dwBuildNumber:  :dword,
             dwPlatformID:   :dword

      def initialize
        self.cbSize = self.size
      end
    end
  end
end
