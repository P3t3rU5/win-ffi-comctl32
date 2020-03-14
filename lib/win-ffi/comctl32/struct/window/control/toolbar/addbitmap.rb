module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tbaddbitmap
    class TBADDBITMAP < FFIAdditions::Struct
      attr_accessor :hInst, :nID

      layout hInst: :hinstance,
             nID:   :uint_ptr
    end
  end
end