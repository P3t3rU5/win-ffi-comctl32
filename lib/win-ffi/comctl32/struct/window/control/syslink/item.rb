module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../enum/window/control/syslink/flag'
    require_relative '../../../../enum/window/control/syslink/state'
    require_relative '../../../../constant'

    module Comctl32
      MAX_LINKID_TEXT = 48

      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-litem
      class LITEM < FFIAdditions::Struct
        attr_accessor :mask,
                      :iLink,
                      :state,
                      :stateMask,
                      :szID,
                      :sxUrl

        layout mask:      LinkItemFlag,
               iLink:     :int,
               state:     LinkItemState,
               stateMask: LinkItemState,
               szID:      [:wchar, MAX_LINKID_TEXT],
               sxUrl:     [:wchar, L_MAX_URL_LENGTH]
      end
    end
  end
end