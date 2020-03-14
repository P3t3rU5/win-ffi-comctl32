require 'win-ffi/comctl32/enum/window/control/listview/background_image_flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvbkimagea
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvbkimagew
    class LVBKIMAGE < FFIAdditions::Struct
      attr_accessor :ulFlags,
                    :hbm,
                    :pszImage,
                    :cchImageMax,
                    :xOffsetPercent,
                    :yOffsetPercent

      layout ulFlags:        ListviewBackgroundImageFlag,
             hbm:            :hbitmap,
             pszImage:       :string,
             cchImageMax:    :uint,
             xOffsetPercent: :int,
             yOffsetPercent: :int
    end
  end
end