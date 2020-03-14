require_relative 'dll_version_info'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/shlwapi/ns-shlwapi-_dllversioninfo2
    class DLLVERSIONINFO2 < FFIAdditions::Struct
      attr_accessor :info1, :dwFlags, :ullVersion

      layout info1:      DLLVERSIONINFO,
             dwFlags:    :dword,
             ullVersion: :ulonglong
    end
  end
end
