require_relative '../../../../enum/window/control/listview/column_flag'
require_relative '../../../../enum/window/control/listview/column_flag_mt'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taglvcolumna
    class LVCOLUMN < FFIAdditions::Struct
      def mask; end
      def mask=(v) end
      def fmt; end
      def fmt=(v) end
      def cx; end
      def cx=(v) end
      def pszText; end
      def pszText=(v) end
      def cchTextMax; end
      def cchTextMax=(v) end
      def iSubItem; end
      def iSubItem=(v) end
      def iImage; end
      def iImage=(v) end
      def iOrder; end
      def iOrder=(v) end

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
        def cxMin; end
        def cxMin=(v) end
        def cxDefault; end
        def cxDefault=(v) end
        def cxIdeal; end
        def cxIdeal=(v) end

        buffer.merge(cxMin: :int, cxDefault: :int, cxIdeal: :int)
      end

      layout buffer
    end
  end
end