module WinFFI
  if WINDOWS_VERSION >= :xp
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-_ttgettitle
      class TTGETTITLE < FFIAdditions::Struct
        def dwSize; end
        def dwSize=(v) end
        def uTitleBitmap; end
        def uTitleBitmap=(v) end
        def cch; end
        def cch=(v) end
        def pszTitle; end
        def pszTitle=(v) end

        layout dwSize:       :dword,
               uTitleBitmap: :uint,
               cch:          :uint,
               pszTitle:     :string

        def initialize
          super
          self.dwSize = self.size
        end

        private :dwSize=
      end
    end
  end
end