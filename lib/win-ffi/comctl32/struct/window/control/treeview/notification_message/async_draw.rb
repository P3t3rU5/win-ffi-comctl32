module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    require_relative '../../../../../struct/window/control/imagelist/draw_params'
    require_relative '../../../../../typedef/htreeitem'

    # https://docs.microsoft.com/en-us/windows/desktop/api/Commctrl/ns-commctrl-tagnmtreeviewa
    module Comctl32
      class NMTVASYNCDRAW < FFIAdditions::Struct
        def hdr; end
        def hdr=(v); end
        def pimldp; end
        def pimldp=(v); end
        def hr; end
        def hr=(v); end
        def hItem; end
        def hItem=(v); end
        def dwRetFlags; end
        def dwRetFlags=(v); end
        def iRetImageIndex; end
        def iRetImageIndex=(v); end

        layout hdr:            User32::NMHDR,
               pimldp:         IMAGELISTDRAWPARAMS.ptr,
               hr:             :hresult,
               hItem:          :htreeitem,
               dwRetFlags:     :dword,
               iRetImageIndex: :int
      end
    end
  end
end
