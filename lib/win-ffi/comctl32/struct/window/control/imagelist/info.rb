require 'win-ffi/core/struct/rect'

module WinFFI
  module Comctl32
    # https://msdn.microsoft.com/en-us/library/ms909583.aspx
    class IMAGEINFO < FFIAdditions::Struct
      def hbmImage; end
      def hbmImage=(v) end
      def hbmMask; end
      def hbmMask=(v) end
      def Unused1; end
      def Unused1=(v) end
      def Unused2; end
      def Unused2=(v) end
      def rcImage; end
      def rcImage=(v) end

      layout hbmImage: :hbitmap,
             hbmMask:  :hbitmap,
             Unused1:  :int,
             Unused2:  :int,
             rcImage:  RECT
    end
  end
end