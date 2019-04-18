module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      ToolbarInfo = enum :toolbar_info, [
          :IMAGE,      0x00000001,
          :TEXT,       0x00000002,
          :DI_SETITEM, 0x10000000
      ]

      define_prefix(:TBNF, ToolbarInfo)
    end
  end
end