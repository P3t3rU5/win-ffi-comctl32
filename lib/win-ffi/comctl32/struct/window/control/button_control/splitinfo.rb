module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/size'

    require_relative '../../../../typedef/himagelist'
    require_relative '../../../../enum/window/control/button_control/split_info_flag'
    require_relative '../../../../enum/window/control/button_control/split_info_style'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-button_splitinfo
      class BUTTON_SPLITINFO < FFIAdditions::Struct
        attr_accessor :mask, :himlGlyph, :uSplitStyle, :size

        layout mask:        ButtonControlSplitInfoFlag,
               himlGlyph:   :himagelist,
               uSplitStyle: ButtonControlSplitInfoStyle,
               size:        SIZE
      end
    end
  end
end
