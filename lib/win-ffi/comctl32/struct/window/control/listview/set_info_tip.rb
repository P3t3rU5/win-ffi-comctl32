module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taglvsetinfotip
      class LVSETINFOTIP < FFIAdditions::Struct
        def cbSize; end
        def cbSize=(v) end
        def dwFlags; end
        def dwFlags=(v) end
        def pszText; end
        def pszText=(v) end
        def iItem; end
        def iItem=(v) end
        def iSubItem; end
        def iSubItem=(v) end

        layout cbSize:   :uint,
               dwFlags:  :dword,
               pszText:  :string,
               iItem:    :int,
               iSubItem: :int

        def initialize
          super
          self.cbSize = self.size
        end

        private :cbSize=
      end
    end
  end
end