require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb759977%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    # HWND CreateUpDownControl(
    #   DWORD     dwStyle,
    #   int       x,
    #   int       y,
    #   int       cx,
    #   int       cy,
    #   HWND      hParent,
    #   int       nID,
    #   HINSTANCE hInst,
    #   HWND      hBuddy,
    #   int       nUpper,
    #   int       nLower,
    #   int       nPos)
    attach_function 'CreateUpDownControl',
                    [:dword, :int, :int, :int, :int, :hwnd, :int, :hinstance, :hwnd, :int, :int, :int], :hwnd
  end
end