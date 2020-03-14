module WinFFI
  module Comctl32
    if WINDOWS_VERSION >= :vista
      require_relative '../../../../typedef/himagelist'

      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-imagelistdrawparams
      class IMAGELISTDRAWPARAMS < FFIAdditions::Struct
        attr_accessor :cbSize,
                      :himl,
                      :i,
                      :hdcDst,
                      :x,
                      :y,
                      :cx,
                      :cy,
                      :xBitmap,
                      :yBitmap,
                      :rgbBk,
                      :rgbFg,
                      :fStyle,
                      :dwRop,
                      :fState,
                      :Frame,
                      :crEffect

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
