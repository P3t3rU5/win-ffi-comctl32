module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      TASKDIALOG_COMMON_BUTTON_FLAGS = enum :taskdialog_common_button_flags, [
          :OK_BUTTON,     0x0001,
          :YES_BUTTON,    0x0002,
          :NO_BUTTON,     0x0004,
          :CANCEL_BUTTON, 0x0008,
          :RETRY_BUTTON,  0x0010,
          :CLOSE_BUTTON,  0x0020
      ]

      define_prefix(:TDCBF, TASKDIALOG_COMMON_BUTTON_FLAGS)
    end
  end
end