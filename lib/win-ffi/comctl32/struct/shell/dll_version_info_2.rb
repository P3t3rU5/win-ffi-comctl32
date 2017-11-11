require 'win-ffi/comctl32/struct/shell/dll_version_info'

module WinFFI
  module Comctl32
    class DLLVERSIONINFO2 < FFIAdditions::Struct
      layout info1:         DLLVERSIONINFO,
             dwFlags:        :dword,
             ullVersion: :ulonglong
    end
  end
end
