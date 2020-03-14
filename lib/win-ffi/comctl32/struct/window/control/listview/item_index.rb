module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvitemindex
      class LVITEMINDEX < FFIAdditions::Struct
        attr_accessor :iItem, :iGroup

        layout iItem:  :int,
               iGroup: :int
      end
    end
  end
end