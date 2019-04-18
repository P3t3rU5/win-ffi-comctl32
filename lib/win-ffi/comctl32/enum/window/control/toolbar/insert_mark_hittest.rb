require 'win-ffi/comctl32'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760480(v=vs.85).aspx
      ToolbarInsertMarkHittest = enum :toolbar_insert_mark_hittest, [
          :AFTER,      0x00000001,
          :BACKGROUND, 0x00000002,
      ]

      define_prefix(:TBIMHT, ToolbarInsertMarkHittest)
    end
  end
end