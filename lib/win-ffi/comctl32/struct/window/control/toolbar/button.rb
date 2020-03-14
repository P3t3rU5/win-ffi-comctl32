module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tbbutton
    class TBBUTTON < FFIAdditions::Struct
      attr_accessor :iBitmap,
                    :idCommand,
                    :fsState,
                    :fsStyle,
                    :bReserved,
                    :dwData,
                    :iString

      layout iBitmap:   :int,
             idCommand: :int,
             fsState:   :byte,
             fsStyle:   :byte,
             bReserved: [:byte, WinFFI.x64? ? 6 : # padding for alignment, windows 64
             2], # padding for alignment, windows 32
             dwData:    :dword_ptr,
             iString:   :int_ptr
    end
  end
end