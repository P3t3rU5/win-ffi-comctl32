module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      buffer = [
        :FIRST,                  0x1200,

        :GETITEMCOUNT,           0x1200,
        :DELETEITEM,             0x1202,
        :LAYOUT,                 0x1205,
        :HITTEST,                0x1206,
        :GETITEMRECT,            0x1207,
        :SETIMAGELIST,           0x1208,
        :GETIMAGELIST,           0x1209,
        :ORDERTOINDEX,           0x120F,
        :CREATEDRAGIMAGE,        0x1210,
        :GETORDERARRAY,          0x1211,
        :SETORDERARRAY,          0x1212,
        :SETHOTDIVIDER,          0x1213,
        :SETBITMAPMARGIN,        0x1214,
        :GETBITMAPMARGIN,        0x1215,
        :SETFILTERCHANGETIMEOUT, 0x1216,
        :EDITFILTER,             0x1217,
        :CLEARFILTER,            0x1218,
        #if(NTDDI_VERSION >= NTDDI_VISTA)


        #if (_WIN32_IE >= 0x0600)
        :TRANSLATEACCELERATOR,   0x0461,

        :SETUNICODEFORMAT, 0x2005,
        :GETUNICODEFORMAT, 0x2006,

      ]

      buffer += if WinFFI.ascii?
        [
          :INSERTITEM, 0x1201,
          :GETITEM,    0x1203,
          :SETITEM,    0x1204,
        ]
      else
        [
          :INSERTITEM, 0x120A,
          :GETITEM,    0x120B,
          :SETITEM,    0x120C,
        ]
      end

      if WINDOWS_VERSION >= :vista
        buffer += [
          :GETITEMDROPDOWNRECT,    0x1219,
          :GETOVERFLOWRECT,        0x121A,
          :GETFOCUSEDITEM,         0x121B,
          :SETFOCUSEDITEM,         0x121C
        ]
      end

      HeaderMessage = enum :header_message, buffer

      define_prefix(:HDM, HeaderMessage)
    end
  end
end
