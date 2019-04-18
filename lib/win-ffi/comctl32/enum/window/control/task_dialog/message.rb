module WinFFI
  module Comctl32
    TASKDIALOG_MESSAGES = enum :taskdialog_messages, [
        :NAVIGATE_PAGE,                       0x0465,
        :CLICK_BUTTON,                        0x0466,
        :SET_MARQUEE_PROGRESS_BAR,            0x0467,
        :SET_PROGRESS_BAR_STATE,              0x0468,
        :SET_PROGRESS_BAR_RANGE,              0x0469,
        :SET_PROGRESS_BAR_POS,                0x046A,
        :SET_PROGRESS_BAR_MARQUEE,            0x046B,
        :SET_ELEMENT_TEXT,                    0x046C,
        :CLICK_RADIO_BUTTON,                  0x046E,
        :ENABLE_BUTTON,                       0x046F,
        :ENABLE_RADIO_BUTTON,                 0x0470,
        :CLICK_VERIFICATION,                  0x0471,
        :UPDATE_ELEMENT_TEXT,                 0x0472,
        :SET_BUTTON_ELEVATION_REQUIRED_STATE, 0x0473,
        :UPDATE_ICON,                         0x0474
    ]

    define_prefix(:TDM, TASKDIALOG_MESSAGES)
  end
end