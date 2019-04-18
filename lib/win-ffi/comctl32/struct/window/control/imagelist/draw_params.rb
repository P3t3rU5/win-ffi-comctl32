module WinFFI
  module Comctl32
    if WINDOWS_VERSION >= :vista
      require_relative '../../../../typedef/himagelist'

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-imagelistdrawparams
      class IMAGELISTDRAWPARAMS < FFIAdditions::Struct
        def cbSize; end
        def cbSize=(v) end
        def himl; end
        def himl=(v) end
        def i; end
        def i=(v) end
        def hdcDst; end
        def hdcDst=(v) end
        def x; end
        def x=(v) end
        def y; end
        def y=(v) end
        def cx; end
        def cx=(v) end
        def cy; end
        def cy=(v) end
        def xBitmap; end
        def xBitmap=(v) end
        def yBitmap; end
        def yBitmap=(v) end
        def rgbBk; end
        def rgbBk=(v) end
        def rgbFg; end
        def rgbFg=(v) end
        def fStyle; end
        def fStyle=(v) end
        def dwRop; end
        def dwRop=(v) end
        def fState; end
        def fState=(v) end
        def Frame; end
        def Frame=(v) end
        def crEffect; end
        def crEffect=(v) end

        layout cbSize:   :dword,
               himl:     :himagelist,
               i:        :int,
               hdcDst:   :hdc,
               x:        :int,
               y:        :int,
               cx:       :int,
               cy:       :int,
               xBitmap:  :int, # x offest from the upperleft of bitmap,
               yBitmap:  :int, # y offset from the upperleft of bitmap,
               rgbBk:    :colorref,
               rgbFg:    :colorref,
               fStyle:   :uint,
               dwRop:    :dword,
               fState:   :dword,
               Frame:    :dword,
               crEffect: :colorref

        def initialize
          super
          self.cbSize = self.size
        end

        private :cbSize=
      end
    end
  end
end
