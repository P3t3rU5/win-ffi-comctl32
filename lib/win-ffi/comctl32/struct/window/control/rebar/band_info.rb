module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/enum/window/state_system_flag'
    require_relative '../../../../enum/window/control/rebar/band_info_mask'
    require_relative '../../../../enum/window/control/rebar/band_style'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-rebarbandinfoa
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-rebarbandinfow
      class REBARBANDINFO < FFIAdditions::Struct
        def cbSize; end
        def cbSize=(v) end
        def fMask; end
        def fMask=(v) end
        def fStyle; end
        def fStyle=(v) end
        def clrFore; end
        def clrFore=(v) end
        def clrBack; end
        def clrBack=(v) end
        def lpText; end
        def lpText=(v) end
        def cch; end
        def cch=(v) end
        def iImage; end
        def iImage=(v) end
        def hwndChild; end
        def hwndChild=(v) end
        def cxMinChild; end
        def cxMinChild=(v) end
        def cyMinChild; end
        def cyMinChild=(v) end
        def cx; end
        def cx=(v) end
        def hbmBack; end
        def hbmBack=(v) end
        def wID; end
        def wID=(v) end
        def cyChild; end
        def cyChild=(v) end
        def cyMaxChild; end
        def cyMaxChild=(v) end
        def cyIntegral; end
        def cyIntegral=(v) end
        def cxIdeal; end
        def cxIdeal=(v) end
        def lParam; end
        def lParam=(v) end
        def cxHeader; end
        def cxHeader=(v) end

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
          def rcChevronLocation; end
          def rcChevronLocation=(v) end
          def uChevronState; end
          def uChevronState=(v) end

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