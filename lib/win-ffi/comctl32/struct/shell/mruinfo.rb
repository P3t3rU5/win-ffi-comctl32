require 'win-ffi/comctl32'

module WinFFI
  module Comctl32

    MRUCMPPROC = callback 'MRUCMPPROC', [:string, :string], :int

    class MRUINFO < FFIAdditions::Struct
      layout cbSize:          :dword,
             uMax:             :uint,
             fFlags:           :uint,
             hKey:             :hkey,
             lpszSubKey:     :string,
             lpfnCompare: MRUCMPPROC
    end
  end
end