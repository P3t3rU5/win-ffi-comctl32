module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-tab-control-reference-messages
    buffer = [
        :FIRST,            0x1300,
        :GETIMAGELIST,     0x1302,
        :SETIMAGELIST,     0x1303,
        :GETITEMCOUNT,     0x1304,
        :DELETEITEM,       0x1308,
        :DELETEALLITEMS,   0x1309,
        :GETITEMRECT,      0x130A,
        :GETCURSEL,        0x130B,
        :SETCURSEL,        0x130C,
        :HITTEST,          0x130D,
        :SETITEMEXTRA,     0x130E,
        :ADJUSTRECT,       0x1328,
        :SETITEMSIZE,      0x1329,
        :REMOVEIMAGE,      0x132A,
        :SETPADDING,       0x132B,
        :GETROWCOUNT,      0x132C,
        :GETTOOLTIPS,      0x132D,
        :SETTOOLTIPS,      0x132E,
        :GETCURFOCUS,      0x132F,
        :SETCURFOCUS,      0x1330,
        :SETMINTABWIDTH,   0x1331,
        :DESELECTALL,      0x1332,
        :HIGHLIGHTITEM,    0x1333,
        :SETEXTENDEDSTYLE, 0x1334,
        :GETEXTENDEDSTYLE, 0x1335,
        :SETUNICODEFORMAT, 0x2005,
        :GETUNICODEFORMAT, 0x2006,
    ]

    buffer += if WinFFI.ascii?
      [
          :GETITEM,    0x1305,
          :SETITEM,    0x1306,
          :INSERTITEM, 0x1307,
      ]
    else
      [
          :GETITEM,    0x133C,
          :SETITEM,    0x133D,
          :INSERTITEM, 0x133E,
      ]
    end

    TabcontrolMessage = enum :tabcontrol_message, buffer
  end
end