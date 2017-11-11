require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761520(v=vs.85).aspx
    ImageListCopyFlag = enum :image_list_copy_flag, [
        :MOVE,   (0x00000000),
        :SWAP,   (0x00000001)
    ]

    define_prefix(:ILCF, ImageListCopyFlag)
  end
end
