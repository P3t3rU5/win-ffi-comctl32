module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/point'

    require_relative '../../../../enum/window/control/draglist/notification'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-draglistinfo
      class DRAGLISTINFO < FFIAdditions::Struct
        attr_accessor :uNotification, :hwnd, :ptCursor

        layout uNotification: DragListNotification,
               hwnd:          :hwnd,
               ptCursor:      POINT
      end
    end
  end
end