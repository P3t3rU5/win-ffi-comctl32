require 'win-ffi/comctl32/enum/window/control/listview/background_image_flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taglvbkimagea
    class LVBKIMAGE < FFIAdditions::Struct
      def ulFlags; end
      def ulFlags=(v) end
      def hbm; end
      def hbm=(v) end
      def pszImage; end
      def pszImage=(v) end
      def cchImageMax; end
      def cchImageMax=(v) end
      def xOffsetPercent; end
      def xOffsetPercent=(v) end
      def yOffsetPercent; end
      def yOffsetPercent=(v) end

      layout ulFlags:        ListviewBackgroundImageFlag,
             hbm:            :hbitmap,
             pszImage:       :string,
             cchImageMax:    :uint,
             xOffsetPercent: :int,
             yOffsetPercent: :int
    end
  end
end