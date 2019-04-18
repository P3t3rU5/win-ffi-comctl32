require 'win-ffi/core/struct/rect'
require 'win-ffi/user32/struct/window/control/notification_message/custom_draw'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-nmtbcustomdraw
    class NMTBCUSTOMDRAW < FFIAdditions::Struct
      def nmcd; end
      def nmcd=(v) end
      def hbrMonoDither; end
      def hbrMonoDither=(v) end
      def hbrLines; end
      def hbrLines=(v) end
      def hpenLines; end
      def hpenLines=(v) end
      def clrText; end
      def clrText=(v) end
      def clrMark; end
      def clrMark=(v) end
      def clrTextHighlight; end
      def clrTextHighlight=(v) end
      def clrBtnFace; end
      def clrBtnFace=(v) end
      def clrBtnHighlight; end
      def clrBtnHighlight=(v) end
      def clrHighlightHotTrack; end
      def clrHighlightHotTrack=(v) end
      def rcText; end
      def rcText=(v) end
      def nStringBkMode; end
      def nStringBkMode=(v) end
      def nHLStringBkMode; end
      def nHLStringBkMode=(v) end

      buffer = {
          nmcd:                 User32::NMCUSTOMDRAW,
          hbrMonoDither:        :hbrush,
          hbrLines:             :hbrush,
          hpenLines:            :hpen,
          clrText:              :colorref,
          clrMark:              :colorref,
          clrTextHighlight:     :colorref,
          clrBtnFace:           :colorref,
          clrBtnHighlight:      :colorref,
          clrHighlightHotTrack: :colorref,
          rcText:               RECT,
          nStringBkMode:        :int,
          nHLStringBkMode:      :int
      }

      if WINDOWS_VERSION >= :xp
        def iListGap; end
        def iListGap=(v) end

        buffer.merge(iListGap: :int)
      end

      layout buffer
    end
  end
end