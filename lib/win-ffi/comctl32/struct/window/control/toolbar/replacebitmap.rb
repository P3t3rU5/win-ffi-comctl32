module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tbreplacebitmap
    class TBREPLACEBITMAP < FFIAdditions::Struct
      attr_accessor :hInstOld,
                    :nIDOld,
                    :hInstNew,
                    :nIDNew,
                    :nButtons

      layout hInstOld: :hinstance,
             nIDOld:   :uint_ptr,
             hInstNew: :hinstance,
             nIDNew:   :uint_ptr,
             nButtons: :int
    end
  end
end