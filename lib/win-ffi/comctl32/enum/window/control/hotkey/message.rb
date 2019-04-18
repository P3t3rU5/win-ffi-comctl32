module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-hot-key-control-reference-messages
      HotkeyMessage = enum :hotkey_message, [:SETHOTKEY, 0x0401, :GETHOTKEY, 0x0402, :SETRULES, 0x0403]

      define_prefix(:HKM, HotkeyMessage)
    end
  end
end