module WinFFI
  module Comctl32
    buffer = [
        :ENABLE_HYPERLINKS,           0x0001,
        :USE_HICON_MAIN,              0x0002,
        :USE_HICON_FOOTER,            0x0004,
        :ALLOW_DIALOG_CANCELLATION,   0x0008,
        :USE_COMMAND_LINKS,           0x0010,
        :USE_COMMAND_LINKS_NO_ICON,   0x0020,
        :EXPAND_FOOTER_AREA,          0x0040,
        :EXPANDED_BY_DEFAULT,         0x0080,
        :VERIFICATION_FLAG_CHECKED,   0x0100,
        :SHOW_PROGRESS_BAR,           0x0200,
        :SHOW_MARQUEE_PROGRESS_BAR,   0x0400,
        :CALLBACK_TIMER,              0x0800,
        :POSITION_RELATIVE_TO_WINDOW, 0x1000,
        :RTL_LAYOUT,                  0x2000,
        :NO_DEFAULT_RADIO_BUTTON,     0x4000,
        :CAN_BE_MINIMIZED,            0x8000,

        :SIZE_TO_CONTENT,             0x01000000
    ]

    buffer += [:NO_SET_FOREGROUND, 0x00010000] if WINDOWS_VERSION >= 8

    TASKDIALOG_FLAGS = enum :taskdialog_flags, buffer

    define_prefix(:TDF, TASKDIALOG_FLAGS)
  end
end