require 'win-ffi/core/struct/point'
require_relative '../../../../enum/window/control/listview/hittest_info'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-lvhittestinfo
    class LVHITTESTINFO < FFIAdditions::Struct
      def pt; end
      def pt=(v) end
      def flags; end
      def flags=(v) end
      def iItem; end
      def iItem=(v) end
      def iSubItem; end
      def iSubItem=(v) end

      buffer = {
          pt:       POINT,
          flags:    ListviewHittestInfo,
          iItem:    :int,
          iSubItem: :int
      }

      if WINDOWS_VERSION >= :vista
        def iGroup; end
        def iGroup=(v) end

        buffer.merge(iGroup: :int)
      end

      layout buffer
    end
  end
end