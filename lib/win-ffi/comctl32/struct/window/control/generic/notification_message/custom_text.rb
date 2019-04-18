module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      class NMCUSTOMTEXT < FFIAdditions::Struct
        def hdr; end
        def hdr=(v) end
        def hDC; end
        def hDC=(v) end
        def lpString; end
        def lpString=(v) end
        def nCount; end
        def nCount=(v) end
        def lpRect; end
        def lpRect=(v) end
        def uFormat; end
        def uFormat=(v) end
        def fLink; end
        def fLink=(v) end

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
