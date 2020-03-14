module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmrbautosize
      class NMRBAUTOSIZE < FFIAdditions::Struct
        attr_accessor :hdr, :fChanged, :rcTarget, :rcActual

        layout hdr:      User32::NMHDR,
               fChanged: :bool,
               rcTarget: RECT,
               rcActual: RECT
      end
    end
  end
end