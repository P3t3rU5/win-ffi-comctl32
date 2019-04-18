module WinFFI
  module Comctl32
    TASKDIALOG_NOTIFICATIONS = enum :taskdialog_notifications, [
        :CREATED,                0,
        :NAVIGATED,              1,
        :BUTTON_CLICKED,         2,
        :HYPERLINK_CLICKED,      3,
        :TIMER,                  4,
        :DESTROYED,              5,
        :RADIO_BUTTON_CLICKED,   6,
        :DIALOG_CONSTRUCTED,     7,
        :VERIFICATION_CLICKED,   8,
        :HELP,                   9,
        :EXPANDO_BUTTON_CLICKED, 10
    ]

    define_prefix(:TDN, TASKDIALOG_NOTIFICATIONS)
  end
end