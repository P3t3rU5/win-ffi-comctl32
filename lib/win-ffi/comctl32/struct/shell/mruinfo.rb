require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb776772(v=vs.85).aspx
    MRUCMPPROC = callback 'MRUCMPPROC', [:string, :string], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb773340(v=vs.85).aspx
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