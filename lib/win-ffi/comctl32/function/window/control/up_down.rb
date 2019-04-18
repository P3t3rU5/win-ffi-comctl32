module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-createupdowncontrol
    # @param [Integer] dwStyle
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] cx
    # @param [Integer] cy
    # @param [FFI::Pointer] hParent
    # @param [Integer] nId
    # @param [FFI::Pointer] hInst
    # @param [FFI::Pointer] hBuddy
    # @param [Integer] nUpper
    # @param [Integer] nLower
    # @param [Integer] nPos
    # @return [FFI::Pointer]
    def self.CreateUpDownControl(dwStyle, x, y, cx, cy, hParent, nId, hInst, hBuddy, nUpper, nLower, nPos) end
    attach_function 'CreateUpDownControl',
                    [:dword, :int, :int, :int, :int, :hwnd, :int, :hinstance, :hwnd, :int, :int, :int], :hwnd
  end
end