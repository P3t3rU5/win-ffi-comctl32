module WinFFI
  module Comctl32
    #ifdef _WIN32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tbsaveparamsa
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tbsaveparamsw
    class TBSAVEPARAMS < FFIAdditions::Struct
      attr_accessor :hkr, :pszSubKey, :pszValueName

      layout hkr:          :hkey,
             pszSubKey:    :string,
             pszValueName: :string
    end
    #endif  // _WIN32
  end
end