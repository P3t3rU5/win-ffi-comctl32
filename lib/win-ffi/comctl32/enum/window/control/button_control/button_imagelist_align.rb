module WinFFI
  if WINDOWS_VERSION >= :xp
    module Comctl32
      ButtonImageListAlign = enum :button_imagelist_align, [
        :LEFT,   0,
        :RIGHT,  1,
        :TOP,    2,
        :BOTTOM, 3,
        :CENTER, 4
      ]

      define_prefix(:BUTTON_IMAGELIST_ALIGN, ButtonImageListAlign)
    end
  end
end
