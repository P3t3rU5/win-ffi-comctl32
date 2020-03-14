require 'win-ffi/core/struct/rect'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-imageinfo
    class IMAGEINFO < FFIAdditions::Struct
      attr_accessor :hbmImage,
                    :hbmMask,
                    :Unused1,
                    :Unused2,
                    :rcImage

      layout hbmImage: :hbitmap,
             hbmMask:  :hbitmap,
             Unused1:  :int,
             Unused2:  :int,
             rcImage:  RECT
    end
  end
end