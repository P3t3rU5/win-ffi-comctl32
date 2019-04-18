module WinFFI
  module Comctl32
    buffer = [
        :FIRST,               0x1100,
        :DELETEITEM,          0x1101,
        :EXPAND,              0x1102,

        :GETITEMRECT,         0x1104,
        :GETCOUNT,            0x1105,
        :GETINDENT,           0x1106,
        :SETINDENT,           0x1107,
        :GETIMAGELIST,        0x1108,
        :SETIMAGELIST,        0x1109,
        :GETNEXTITEM,         0x110A,
        :SELECTITEM,          0x110B,

        :GETEDITCONTROL,      0x110F,
        :GETVISIBLECOUNT,     0x1110,
        :HITTEST,             0x1111,

        :CREATEDRAGIMAGE,     0x1112,
        :SORTCHILDREN,        0x1113,
        :ENSUREVISIBLE,       0x1114,
        :SORTCHILDRENCB,      0x1115,
        :ENDEDITLABELNOW,     0x1116,

        :SETTOOLTIPS,         0x1118,
        :GETTOOLTIPS,         0x1119,
        :SETINSERTMARK,       0x111A,
        :SETUNICODEFORMAT,    0x2005,
        :GETUNICODEFORMAT,    0x2006,
        :SETITEMHEIGHT,       0x111B,
        :GETITEMHEIGHT,       0x111C,
        :SETBKCOLOR,          0x111D,
        :SETTEXTCOLOR,        0x111E,
        :GETBKCOLOR,          0x111F,
        :GETTEXTCOLOR,        0x1120,
        :SETSCROLLTIME,       0x1121,
        :GETSCROLLTIME,       0x1122,
        :SETINSERTMARKCOLOR,  0x1125,
        :GETINSERTMARKCOLOR,  0x1126,
        :SETBORDER,           0x1123,
        #if (NTDDI_VERSION >= NTDDI_WINXP)
        :GETITEMSTATE,        0x1127,
        :SETLINECOLOR,        0x1128,
        :GETLINECOLOR,        0x1129,
        :MAPACCIDTOHTREEITEM, 0x112A,
        :MAPHTREEITEMTOACCID, 0x112B,
        :SETEXTENDEDSTYLE,    0x112C,
        :GETEXTENDEDSTYLE,    0x112D,
        :SETAUTOSCROLLINFO,   0x113B,
        #endif

        :SETHOT,              0x113A,
        #if (NTDDI_VERSION >= NTDDI_VISTA)
        :GETSELECTEDCOUNT,       0x1146,
        :SHOWINFOTIP,            0x1147,
        :GETITEMPARTRECT,        0x1148,
    ]

    buffer += if WinFFI.ascii?
      [
          :INSERTITEM,       0x1100,

          :GETITEM,          0x110C,
          :SETITEM,          0x110D,
          :EDITLABEL,        0x110E,

          :GETISEARCHSTRING, 0x1117,
      ]
    else
      [
          :INSERTITEM,       0x1132,

          :GETITEM,          0x113E,
          :SETITEM,          0x113F,
          :EDITLABEL,        0x1141,

          :GETISEARCHSTRING, 0x1140,
      ]
    end

    TreeViewMessage = enum :treeview_message, buffer

    define_prefix(:TVM, TreeViewMessage)
  end
end
