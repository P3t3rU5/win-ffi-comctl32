module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb774762
      class LVITEMINDEX < FFIAdditions::Struct
        def iItem; end
        def iItem=(v) end
        def iGroup; end
        def iGroup=(v) end

        layout iItem:  :int,
               iGroup: :int
      end
    end
  end
end