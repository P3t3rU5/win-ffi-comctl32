module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/enum/window/state_system_flag'
    require_relative '../../../../enum/window/control/rebar/band_info_mask'
    require_relative '../../../../enum/window/control/rebar/band_style'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-rebarbandinfoa
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-rebarbandinfow
      class REBARBANDINFO < FFIAdditions::Struct
        attr_accessor :cbSize,
                      :fMask,
                      :fStyle,
                      :clrFore,
                      :clrBack,
                      :lpText,
                      :cch,
                      :iImage,
                      :hwndChild,
                      :cxMinChild,
                      :cyMinChild,
                      :cx,
                      :hbmBack,
                      :wID,
                      :cyChild,
                      :cyMaxChild,
                      :cyIntegral,
                      :cxIdeal,
                      :lParam,
                      :cxHeader

        buffer = {
            cbSize:            :uint,
            fMask:             RebarBandInfoMask,
            fStyle:            RebarBandStyle,
            clrFore:           :colorref,
            clrBack:           :colorref,
            lpText:            :string,
            cch:               :uint,
            iImage:            :int,
            hwndChild:         :hwnd,
            cxMinChild:        :uint,
            cyMinChild:        :uint,
            cx:                :uint,
            hbmBack:           :hbitmap,
            wID:               :uint,
            cyChild:           :uint,
            cyMaxChild:        :uint,
            cyIntegral:        :uint,
            cxIdeal:           :uint,
            lParam:            :lparam,
            cxHeader:          :uint
        }

        if WINDOWS_VERSION >= :vista
          attr_accessor :rcChevronLocation, :uChevronState

          buffer.merge(rcChevronLocation: RECT, uChevronState: User32::StateSystemFlag)
        end

        layout buffer

        def initialize
          super
          self.cbSize = self.size
        end

        private :cbSize=
      end
    end
  end
end