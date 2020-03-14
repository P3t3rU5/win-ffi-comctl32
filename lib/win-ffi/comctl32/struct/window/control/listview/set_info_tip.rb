module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvsetinfotip
      class LVSETINFOTIP < FFIAdditions::Struct
        attr_accessor :cbSize,
                      :dwFlags,
                      :pszText,
                      :iItem,
                      :iSubItem

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