require 'win-ffi/comctl32'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760478(v=vs.85).aspx
      ToolbarButtonInfo = enum :toolbar_button_info, [
          :IMAGE,   0x00000001,
          :TEXT,    0x00000002,
          :STATE,   0x00000004,
          :STYLE,   0x00000008,
          :LPARAM,  0x00000010,
          :COMMAND, 0x00000020,
          :SIZE,    0x00000040,
          :BYINDEX, 0x80000000
      ]

      define_prefix(:TBIF, ToolbarButtonInfo)
    end
  end
end