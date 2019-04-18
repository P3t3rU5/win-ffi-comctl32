module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/point'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-drawinsert
      # @param [FFI::Pointer] handParent
      # @param [FFI::Pointer] hLB
      # @param [Integer] nItem
      # @return [nil]
      def self.DrawInsert(handParent, hLB, nItem) end
      attach_function 'DrawInsert', [:hwnd, :hwnd, :int], :void

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-lbitemfrompt
      # @param [FFI::Pointer] hLB
      # @param [POINT] pt
      # @param [true, false] bAutoScroll
      # @return [Integer]
      def self.LBItemFromPt(hLB, pt, bAutoScroll) end
      attach_function 'LBItemFromPt', [:hwnd, POINT, :bool], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-makedraglist
      # @param [FFI::Pointer] hLB
      # @return [true, false]
      def self.MakeDragList(hLB) end
      attach_function 'MakeDragList', [:hwnd], :bool
    end
  end
end