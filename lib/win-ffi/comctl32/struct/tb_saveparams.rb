require 'win-ffi/comctl32/typedef/hkey'

module WinFFI
  module Comctl32
    class TBSAVEPARAMS < FFIAdditions::Struct
      layout :hkr,          :hkey,
             :pszSubKey,    :string,
             :pszValueName, :string
    end
  end
end