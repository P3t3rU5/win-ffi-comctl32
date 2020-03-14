module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../enum/window/control/header/format'
    require_relative '../../../../enum/window/control/header/filter_type'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-_hd_itema
      HeaderItemState = enum :header_item_state, [:FOCUSED, 0x00000001]

      define_prefix(:HDIS, HeaderItemState)

      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-hditema
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-hditemw
      class HDITEM < FFIAdditions::Struct
        attr_accessor :mask,
                      :cxy,
                      :pszText,
                      :hbm,
                      :cchTextMax,
                      :fmt,
                      :lParam,
                      :iImage,
                      :iOrder,
                      :type,
                      :pvFilter,
                      :state

        layout mask:       :uint,
               cxy:        :int,
               pszText:    :string,
               hbm:        :hbitmap,
               cchTextMax: :int,
               fmt:        HeaderFormat,
               lParam:     :lparam,
               iImage:     :int,
               iOrder:     :int,
               type:       HeaderFilterType,
               pvFilter:   :pointer,
               state:      HeaderItemState
      end
    end
  end
end