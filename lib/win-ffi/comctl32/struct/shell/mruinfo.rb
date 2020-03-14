require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/shell/mrucmpproc
    MRUCMPPROC = callback 'MRUCMPPROC', [:string, :string], :int

    # https://docs.microsoft.com/en-us/windows/win32/shell/mruinfo
    class MRUINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :uMax,
                    :fFlags,
                    :hKey,
                    :lpszSubKey,
                    :lpfnCompare

      layout cbSize:      :dword,
             uMax:        :uint,
             fFlags:      :uint,
             hKey:        :hkey,
             lpszSubKey:  :string,
             lpfnCompare: MRUCMPPROC
    end
  end
end