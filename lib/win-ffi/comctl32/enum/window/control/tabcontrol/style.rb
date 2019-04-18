module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/tab-control-styles
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/tab-control-extended-styles
    TabControlStyle = enum :tab_control_style, [
        :SCROLLOPPOSITE,    0x0001, # assumes multiline tab
        :BOTTOM,            0x0002,
        :RIGHT,             0x0002,
        :MULTISELECT,       0x0004, # allow multi-select in button mode
        :FLATBUTTONS,       0x0008,
        :FORCEICONLEFT,     0x0010,
        :FORCELABELLEFT,    0x0020,
        :HOTTRACK,          0x0040,
        :VERTICAL,          0x0080,
        :TABS,              0x0000,
        :BUTTONS,           0x0100,
        :SINGLELINE,        0x0000,
        :MULTILINE,         0x0200,
        :RIGHTJUSTIFY,      0x0000,
        :FIXEDWIDTH,        0x0400,
        :RAGGEDRIGHT,       0x0800,
        :FOCUSONBUTTONDOWN, 0x1000,
        :OWNERDRAWFIXED,    0x2000,
        :TOOLTIPS,          0x4000,
        :FOCUSNEVER,        0x8000,

        # EX styles for use with TCM_SETEXTENDEDSTYLE
        :EX_FLATSEPARATORS, 0x00000001,
        :EX_REGISTERDROP,   0x00000002,
    ]

    define_prefix(:TCS, TabControlStyle)
  end
end