module WinFFI
  if WINDOWS_VERSION >= :xp
    require 'win-ffi/core/struct/rect'

    require_relative '../../../../typedef/himagelist'
    require_relative '../../../../enum/window/control/button_control/button_imagelist_align'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-button_imagelist
      class BUTTON_IMAGELIST < FFIAdditions::Struct
        layout himl:   :himagelist,
               margin: RECT,
               uAlign: ButtonImageListAlign
      end
    end
  end
end
