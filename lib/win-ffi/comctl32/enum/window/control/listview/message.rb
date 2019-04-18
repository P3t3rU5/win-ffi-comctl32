module WinFFI
  module Comctl32
    buffer =  [
        :SETUNICODEFORMAT,         0x2005,
        :GETUNICODEFORMAT,         0x2006,

        :FIRST,                    0x1000,
        :GETBKCOLOR,               0x1000,
        :SETBKCOLOR,               0x1001,
        :GETIMAGELIST,             0x1002,
        :SETIMAGELIST,             0x1003,
        :GETITEMCOUNT,             0x1004,

        :DELETEITEM,               0x1008,
        :DELETEALLITEMS,           0x1009,
        :GETCALLBACKMASK,          0x100A,
        :SETCALLBACKMASK,          0x100B,
        :GETNEXTITEM,              0x100C,

        :GETITEMRECT,              0x100E,
        :SETITEMPOSITION,          0x100F,
        :GETITEMPOSITION,          0x1010,

        :HITTEST,                  0x1012,
        :ENSUREVISIBLE,            0x1013,
        :SCROLL,                   0x1014,
        :REDRAWITEMS,              0x1015,
        :ARRANGE,                  0x1016,
        :GETEDITCONTROL,           0x1018,

        :DELETECOLUMN,             0x101C,
        :GETCOLUMNWIDTH,           0x101D,
        :SETCOLUMNWIDTH,           0x101E,
        :GETHEADER,                0x101F,

        :CREATEDRAGIMAGE,          0x1021,
        :GETVIEWRECT,              0x1022,
        :GETTEXTCOLOR,             0x1023,
        :SETTEXTCOLOR,             0x1024,
        :GETTEXTBKCOLOR,           0x1025,
        :SETTEXTBKCOLOR,           0x1026,
        :GETTOPINDEX,              0x1027,
        :GETCOUNTPERPAGE,          0x1028,
        :GETORIGIN,                0x1029,
        :UPDATE,                   0x102A,
        :SETITEMSTATE,             0x102B,
        :GETITEMSTATE,             0x102C,

        :SETITEMCOUNT,             0x102F,

        :SORTITEMS,                0x1030,
        :SETITEMPOSITION32,        0x1031,
        :GETSELECTEDCOUNT,         0x1032,
        :GETITEMSPACING,           0x1033,

        :SETICONSPACING,           0x1035,
        :SETEXTENDEDLISTVIEWSTYLE, 0x1036,
        :GETEXTENDEDLISTVIEWSTYLE, 0x1037,
        :GETSUBITEMRECT,           0x1038,
        :SUBITEMHITTEST,           0x1039,

        :SETCOLUMNORDERARRAY, 0x103A,
        :GETCOLUMNORDERARRAY, 0x103B,
        :SETHOTITEM,          0x103C,
        :GETHOTITEM,          0x103D,
        :SETHOTCURSOR,        0x103E,
        :GETHOTCURSOR,        0x103F,
        :APPROXIMATEVIEWRECT, 0x1040,

        :SETWORKAREAS,         0x1041,
        :GETWORKAREAS,         0x1046,
        :GETNUMBEROFWORKAREAS, 0x1049,
        :GETSELECTIONMARK,     0x1042,
        :SETSELECTIONMARK,     0x1043,
        :SETHOVERTIME,         0x1047,
        :GETHOVERTIME,         0x1048,
        :SETTOOLTIPS,          0x104A,
        :GETTOOLTIPS,          0x104E,
        :SORTITEMSEX,          0x1051
    ]

    if WINDOWS_VERSION >= :xp
      buffer += [
          :SETSELECTEDCOLUMN,    0x108C,

          :SETVIEW,              0x108E,
          :GETVIEW,              0x108F,

          :INSERTGROUP,          0x1091,
          :SETGROUPINFO,         0x1093,
          :GETGROUPINFO,         0x1095,
          :REMOVEGROUP,          0x1096,
          :MOVEGROUP,            0x1097,
          :GETGROUPCOUNT,        0x1098,
          :GETGROUPINFOBYINDEX,  0x1099,
          :MOVEITEMTOGROUP,      0x109A,
          :GETGROUPRECT,         0x1062,

          :SETGROUPMETRICS,      0x109B,
          :GETGROUPMETRICS,      0x109C,
          :ENABLEGROUPVIEW,      0x109D,

          :SORTGROUPS,           0x109E,
          :INSERTGROUPSORTED,    0x109F,
          :REMOVEALLGROUPS,      0x10A0,
          :HASGROUP,             0x10A1,
          :GETGROUPSTATE,        0x105C,
          :GETFOCUSEDGROUP,      0x105D,

          :SETTILEVIEWINFO,      0x10A2,
          :GETTILEVIEWINFO,      0x10A3,
          :SETTILEINFO,          0x10A4,
          :GETTILEINFO,          0x10A5,
          :SETINSERTMARK,        0x10A6,
          :GETINSERTMARK,        0x10A7,
          :INSERTMARKHITTEST,    0x10A8,
          :GETINSERTMARKRECT,    0x10A9,
          :SETINSERTMARKCOLOR,   0x10AA,
          :GETINSERTMARKCOLOR,   0x10AB,

          :SETINFOTIP,           0x10AD,
          :GETSELECTEDCOLUMN,    0x10AE,
          :ISGROUPVIEWENABLED,   0x10AF,
          :GETOUTLINECOLOR,      0x10B0,
          :SETOUTLINECOLOR,      0x10B1,

          :CANCELEDITLABEL,      0x10B3,
          :MAPINDEXTOID,         0x10B4,
          :MAPIDTOINDEX,         0x10B5,
          :ISITEMVISIBLE,        0x10B6
      ]

      buffer += [
          :GETEMPTYTEXT,         0x10CC,
          :GETFOOTERRECT,        0x10CD,

          :GETFOOTERINFO,        0x10CE,
          :GETFOOTERITEMRECT,    0x10CF,

          :GETFOOTERITEM,        0x10D0,
          :GETITEMINDEXRECT,     0x10D1,
          :SETITEMINDEXSTATE,    0x10D2,
          :GETNEXTITEMINDEX,     0x10D3
      ] if WINDOWS_VERSION >= :vista
    end

    buffer += if WinFFI.ascii?
      [
          :GETITEM,          0x1005,
          :SETITEM,          0x1006,
          :INSERTITEM,       0x1007,
          :FINDITEM,         0x100D,
          :GETSTRINGWIDTH,   0x1011,
          :EDITLABEL,        0x1017,
          :GETCOLUMN,        0x1019,
          :SETCOLUMN,        0x101A,
          :INSERTCOLUMN,     0x101B,
          :GETITEMTEXT,      0x102D,
          :SETITEMTEXT,      0x102E,
          :GETISEARCHSTRING, 0x1034,
          :SETBKIMAGE,       0x1044,
          :GETBKIMAGE,       0x1045
      ]
    else
      [
          :GETITEM,          0x104b,
          :SETITEM,          0x104c,
          :INSERTITEM,       0x104d,
          :FINDITEM,         0x1053,
          :GETSTRINGWIDTH,   0x1057,
          :EDITLABEL,        0x1076,
          :GETCOLUMN,        0x105F,
          :SETCOLUMN,        0x1060,
          :INSERTCOLUMN,     0x1061,
          :GETITEMTEXT,      0x1073,
          :SETITEMTEXT,      0x1074,
          :GETISEARCHSTRING, 0x1075,
          :SETBKIMAGE,       0x108A,
          :GETBKIMAGE,       0x108B
      ]
    end

    ListViewMessage = enum :listview_message, buffer

    define_prefix(:LVM, ListViewMessage)
  end
end
