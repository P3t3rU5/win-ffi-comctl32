require_relative '../../../../enum/window/control/listview/column_flag'
require_relative '../../../../enum/window/control/listview/column_flag_mt'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvcolumna
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvcolumnw
    class LVCOLUMN < FFIAdditions::Struct
      attr_accessor :mask,
                    :fmt,
                    :cx,
                    :pszText,
                    :cchTextMax,
                    :iSubItem,
                    :iImage,
                    :iOrder

      buffer = {
          mask:       ListviewColumnFlag,
          fmt:        ListviewColumnFlagMT,
          cx:         :int,
          pszText:    :string,
          cchTextMax: :int,
          iSubItem:   :int,
          iImage:     :int,
          iOrder:     :int
      }

      if WINDOWS_VERSION >= :vista
        attr_accessor :cxMin,
                      :cxDefault,
                      :cxIdeal

        buffer.merge(cxMin: :int, cxDefault: :int, cxIdeal: :int)
      end

      layout buffer
    end
  end
end