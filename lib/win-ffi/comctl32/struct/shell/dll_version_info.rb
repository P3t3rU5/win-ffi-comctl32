module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/shlwapi/ns-shlwapi-dllversioninfo
    class DLLVERSIONINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :dwMajorVersion,
                    :dwMinorVersion,
                    :dwBuildNumber,
                    :dwPlatformID

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
