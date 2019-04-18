module WinFFI
  module Comctl32
    HeaderSetImageList = enum :header_set_image_list, [:NORMAL, 0, :STATE, 1]

    define_prefix(:HDSIL, HeaderSetImageList)
  end
end
