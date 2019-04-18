require 'win-ffi/comctl32'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      buffer = [
          :FIRST,               0xFFFFFD44,
          :LAST,                0xFFFFFD30,

          :BEGINDRAG,           0xFFFFFD43,
          :ENDDRAG,             0xFFFFFD42,
          :BEGINADJUST,         0xFFFFFD41,
          :ENDADJUST,           0xFFFFFD40,
          :RESET,               0xFFFFFD3F,
          :QUERYINSERT,         0xFFFFFD3E,
          :QUERYDELETE,         0xFFFFFD3D,
          :TOOLBARCHANGE,       0xFFFFFD3C,
          :CUSTHELP,            0xFFFFFD3B,
          :DROPDOWN,            0xFFFFFD3A,
          :GETOBJECT,           0xFFFFFD38,

          :HOTITEMCHANGE,       0xFFFFFD37,
          :DRAGOUT,             0xFFFFFD36,
          :DELETINGBUTTON,      0xFFFFFD35,

          :RESTORE,             0xFFFFFD2F,
          :SAVE,                0xFFFFFD2E,
          :INITCUSTOMIZE,       0xFFFFFD2D,

          :WRAPHOTITEM,         0xFFFFF2DC,
          :DUPACCELERATOR,      0xFFFFF2DB,
          :WRAPACCELERATOR,     0xFFFFF2DA,
          :DRAGOVER,            0xFFFFF2D9,
          :MAPACCELERATOR,      0xFFFFF2D8
      ]

      buffer += if WinFFI.ascii?
        [
            :GETBUTTONINFO,      0xFFFFFD44,
            :GETDISPINFO,        0xFFFFFD34,
            :GETINFOTIP,         0xFFFFFD32
        ]
      else
        [
            :GETBUTTONINFO,      0xFFFFFD30,
            :GETDISPINFO,        0xFFFFFD33,
            :GETINFOTIP,         0xFFFFFD31
        ]
      end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ff486064(v=vs.85).aspx
      ToolbarNotification = enum :toolbar_notification, buffer

      define_prefix(:TBN, ToolbarNotification)
    end
  end
end