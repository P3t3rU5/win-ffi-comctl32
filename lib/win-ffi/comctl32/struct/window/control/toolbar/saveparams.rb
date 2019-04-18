module WinFFI
  module Comctl32
    #ifdef _WIN32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tbsaveparamsa
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tbsaveparamsw
    class TBSAVEPARAMS < FFIAdditions::Struct
      def hkr; end
      def hkr=(v) end
      def pszSubKey; end
      def pszSubKey=(v) end
      def pszValueName; end
      def pszValueName=(v) end

      layout hkr:          :hkey,
             pszSubKey:    :string,
             pszValueName: :string
    end
    #endif  // _WIN32
  end
end