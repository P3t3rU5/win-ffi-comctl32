module WinFFI
  require 'win-ffi/core/struct/point'
  require_relative 'info'

  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tthittestinfoa
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tthittestinfow
    class TTHITTESTINFO < FFIAdditions::Struct
      attr_accessor :hwnd, :pt, :ti

      layout hwnd: :hwnd,
             pt:   POINT,
             ti:   TTTOOLINFO
    end
  end
end