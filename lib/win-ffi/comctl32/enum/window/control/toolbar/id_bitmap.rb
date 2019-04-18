require 'win-ffi/comctl32'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      IDBitmap = enum :id_bitmap, [
          :STD_SMALL_COLOR,  0,
          :STD_LARGE_COLOR,  1,
          :VIEW_SMALL_COLOR, 4,
          :VIEW_LARGE_COLOR, 5,
          :HIST_SMALL_COLOR, 8,
          :HIST_LARGE_COLOR, 9,
          #if (NTDDI_VERSION >= NTDDI_VISTA)
          :HIST_NORMAL,     12,
          :HIST_HOT,        13,
          :HIST_DISABLED,   14,
          :HIST_PRESSED,    15
      ]

      define_prefix(:IDB, IDBitmap)
    end
  end
end