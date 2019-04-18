module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_copy
    ImageListCopyFlag = enum :image_list_copy_flag, [
        :MOVE,   (0x00000000),
        :SWAP,   (0x00000001)
    ]

    define_prefix(:ILCF, ImageListCopyFlag)
  end
end
