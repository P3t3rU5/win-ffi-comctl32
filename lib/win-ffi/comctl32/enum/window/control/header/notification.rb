module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      buffer = [
        :FIRST,           0xFED4, # (0U-300U)
        :LAST,            0xFE71, # (0U-399U)

        :BEGINDRAG,       0xFECA,
        :ENDDRAG,         0xFEC9,
        :FILTERCHANGE,    0xFEC8,
        :FILTERBTNCLICK,  0xFEC7,

        #if (_WIN32_IE >= 0x0600)
        :BEGINFILTEREDIT, 0xFEC6,
        :ENDFILTEREDIT,   0xFEC5
      ]

      buffer += [
        :ITEMSTATEICONCLICK, 0xFEC4,
        :ITEMKEYDOWN,        0xFEC3,
        :DROPDOWN,           0xFEC2,
        :OVERFLOWCLICK,      0xFEC1
        ] if WINDOWS_VERSION >= :vista

        buffer += if WinFFI.ascii?
          [
            :ITEMCHANGING,    0xFED4,
            :ITEMCHANGED,     0xFED3,
            :ITEMCLICK,       0xFED2,
            :ITEMDBLCLICK,    0xFED1,
            :DIVIDERDBLCLICK, 0xFECF,
            :BEGINTRACK,      0xFECE,
            :ENDTRACK,        0xFECD,
            :TRACK,           0xFECC,
            :GETDISPINFO,     0xFECB
          ]
        else
          [
            :ITEMCHANGING,    0xFEC0,
            :ITEMCHANGED,     0xFEBF,
            :ITEMCLICK,       0xFEBE,
            :ITEMDBLCLICK,    0xFEBD,
            :DIVIDERDBLCLICK, 0xFEBB,
            :BEGINTRACK,      0xFEBA,
            :ENDTRACK,        0xFEB9,
            :TRACK,           0xFEB8,
            :GETDISPINFO,     0xFEB7
          ]
        end

        HeaderNotification = enum :header_notification, buffer

        define_prefix(:HDN, HeaderNotification)
      end
    end
  end
