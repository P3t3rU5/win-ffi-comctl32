require 'win-ffi/core/struct/rect'
require 'win-ffi/user32/struct/window/control/notification_message/custom_draw'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmtbcustomdraw
    class NMTBCUSTOMDRAW < FFIAdditions::Struct
      attr_accessor :nmcd,
                    :hbrMonoDither,
                    :hbrLines,
                    :hpenLines,
                    :clrText,
                    :clrMark,
                    :clrTextHighlight,
                    :clrBtnFace,
                    :clrBtnHighlight,
                    :clrHighlightHotTrack,
                    :rcText,
                    :nStringBkMode,
                    :nHLStringBkMode

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
        attr_accessor :iListGap

        buffer.merge(iListGap: :int)
      end

      layout buffer
    end
  end
end