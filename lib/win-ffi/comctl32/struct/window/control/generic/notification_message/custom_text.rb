module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmcustomtext
      class NMCUSTOMTEXT < FFIAdditions::Struct
        attr_accessor :hdr,
                      :hDC,
                      :lpString,
                      :nCount,
                      :lpRect,
                      :uFormat,
                      :fLink

        layout hdr:      User32::NMHDR,
               hDC:      :hdc,
               lpString: :string,
               nCount:   :int,
               lpRect:   :pointer,
               uFormat:  :uint,
               fLink:    :bool
      end
    end
  end
end
