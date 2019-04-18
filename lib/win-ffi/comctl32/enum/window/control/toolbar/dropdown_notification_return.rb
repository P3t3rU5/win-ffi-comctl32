require 'win-ffi/comctl32'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760527(v=vs.85).aspx
      ToolbarDropdownNotificationReturn = enum :toolbar_dropdown_notification_return, [
          :DEFAULT,      0,
          :NODEFAULT,    1,
          :TREATPRESSED, 2
      ]

      define_prefix(:TBDDRET, ToolbarDropdownNotificationReturn)
    end
  end
end