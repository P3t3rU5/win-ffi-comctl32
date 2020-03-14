module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    require_relative '../../../../../struct/window/control/imagelist/draw_params'
    require_relative '../../../../../typedef/htreeitem'

    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtvasyncdraw
    module Comctl32
      class NMTVASYNCDRAW < FFIAdditions::Struct
        attr_accessor :hdr,
                      :pimldp,
                      :hr,
                      :hItem,
                      :dwRetFlags,
                      :iRetImageIndex

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
