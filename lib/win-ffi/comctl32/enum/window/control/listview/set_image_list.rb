module WinFFI
  module Comctl32
    ListViewSetImageList = enum :listview_set_image_list, [
        :NORMAL,      0,
        :SMALL,       1,
        :STATE,       2,
        :GROUPHEADER, 3
    ]

    define_prefix(:LVSIL, ListViewSetImageList)
  end
end
