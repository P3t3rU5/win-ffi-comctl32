require_relative '../../../function/window/control/imagelist'

module WinFFI
  module Comctl32
    class << self
      #define     ImageList_AddIcon(himl, hicon) ImageList_ReplaceIcon(himl, -1, hicon)
      def ImageList_AddIcon(himl, hicon)
        ImageList_ReplaceIcon(himl, -1, hicon)
      end

      #define     ImageList_RemoveAll(himl) ImageList_Remove(himl, -1)
      def ImageList_RemoveAll(himl)
        ImageList_Remove(himl, -1)
      end

      #define     ImageList_ExtractIcon(hi, himl, i) ImageList_GetIcon(himl, i, 0)
      def ImageList_ExtractIcon(hi, himl, i)
        ImageList_GetIcon(himl, i, 0)
      end

      #define     ImageList_LoadBitmap(hi, lpbmp, cx, cGrow, crMask) ImageList_LoadImage(hi, lpbmp, cx, cGrow, crMask, IMAGE_BITMAP, 0)
      def ImageList_LoadBitmap(hi, lpbmp, cx, cGrow, crMask)
        ImageList_LoadImage(hi, lpbmp, cx, cGrow, crMask, IMAGE_BITMAP, 0)
      end
    end
  end
end
