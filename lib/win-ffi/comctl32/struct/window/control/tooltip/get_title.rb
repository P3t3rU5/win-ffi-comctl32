module WinFFI
  if WINDOWS_VERSION >= :xp
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-ttgettitle
      class TTGETTITLE < FFIAdditions::Struct
        attr_accessor :dwSize, :uTitleBitmap, :cch, :pszTitle

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