module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/Controls/hkm-setrules
      HotkeyCombination = enum :hotkey_combination, [
          :NONE, 0x0001,
          :S,    0x0002,
          :C,    0x0004,
          :A,    0x0008,
          :SC,   0x0010,
          :SA,   0x0020,
          :CA,   0x0040,
          :SCA,  0x0080
      ]

      define_prefix(:HKCOMB, HotkeyCombination)
    end
  end
end