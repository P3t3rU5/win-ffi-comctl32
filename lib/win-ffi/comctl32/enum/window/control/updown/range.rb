module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      UpDownRange = enum :updown_range, [
        :MAXVAL,  0x7fff,
        :MINVAL, -0x7fff,
      ]
      
      define_prefix(:UD, UpDownRange)
    end
  end
end
