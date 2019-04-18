module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/enum/window/control/scrollbar'
    require 'win-ffi/user32/struct/window/control/scrollbar/info'
    require 'win-ffi/user32/struct/window/control/scrollbar/scroll_info'

    require_relative '../../../enum/window/control/flat_scrollbar_properties'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-flatsb_enablescrollbar
      # @param [FFI::Pointer] hwnd
      # @param [Integer] wSBflags
      # @param [Integer] wArrows
      # @return [true, false]
      def self.FlatSB_EnableScrollBar(hwnd, wSBflags, wArrows) end
      attach_function 'FlatSB_EnableScrollBar', [:hwnd, User32::Scrollbar, :uint], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-flatsb_getscrollinfo
      # @param [FFI::Poitner] hwnd
      # @param [Integer] fnBar
      # @param [FFI::Pointer] lpsi
      # @return [true, false]
      def self.FlatSB_GetScrollInfo(hwnd, fnBar, lpsi) end
      attach_function 'FlatSB_GetScrollInfo', [:hwnd, User32::Scrollbar, User32::SCROLLINFO.ptr], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-flatsb_getscrollpos
      # @param [FFI::Pointer] hwnd
      # @param [Integer] code
      # @return [Integer]
      def self.FlatSB_GetScrollPos(hwnd, code) end
      attach_function 'FlatSB_GetScrollPos', [:hwnd, User32::Scrollbar], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-flatsb_getscrollprop
      # @param [FFI::Pointer] hwnd
      # @param [Integer] index
      # @param [FFI::Pointer] pValue
      # @return [true, false]
      def self.FlatSB_GetScrollProp(hwnd, index, pValue) end
      attach_function 'FlatSB_GetScrollProp', [:hwnd, FlatScrollBarProperties, :pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-flatsb_getscrollrange
      # @param [FFI::Pointer] hwnd
      # @param [Integer] code
      # @param [FFI::Pointer] lpMinPos
      # @param [FFI::Pointer] lpMaxPos
      # @return [true, false]
      def self.FlatSB_GetScrollRange(hwnd, code, lpMinPos, lpMaxPos) end
      attach_function 'FlatSB_GetScrollRange', [:hwnd, User32::Scrollbar, :pointer, :pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-flatsb_setscrollinfo
      # @param [FFI::Pointer] hwnd
      # @param [Integer] fnBar
      # @param [FFI::Pointer] lpsi
      # @param [true, false] fRedraw
      # @return [Integer]
      def self.FlatSB_SetScrollInfo(hwnd, fnBar, lpsi, fRedraw) end
      attach_function 'FlatSB_SetScrollInfo', [:hwnd, User32::Scrollbar, User32::SCROLLINFO.ptr, :bool], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-flatsb_setscrollpos
      # @param [FFI::Pointer] hwnd
      # @param [Integer] code
      # @param [Integer] nPos
      # @param [true, false] fRedraw
      # @return [Integer]
      def self.FlatSB_SetScrollPos(hwnd, code, nPos, fRedraw) end
      attach_function 'FlatSB_SetScrollPos', [:hwnd, User32::Scrollbar, :int, :bool], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-flatsb_setscrollprop
      # @param [FFI::Pointer] hwnd
      # @param [Integer] index
      # @param [Integer] newValue
      # @param [true, false] fRedraw
      # @return [true, false]
      def self.FlatSB_SetScrollProp(hwnd, index, newValue, fRedraw) end
      attach_function 'FlatSB_SetScrollProp', [:hwnd, FlatScrollBarProperties, :int_ptr, :bool], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-flatsb_setscrollrange
      # @param [FFI::Pointer] hwnd
      # @param [Integer] code
      # @param [Integer] nMinPos
      # @param [Integer] nMaxPos
      # @param [true, false] fRedraw
      # @return [Integer]
      def self.FlatSB_SetScrollRange(hwnd, code, nMinPos, nMaxPos, fRedraw) end
      attach_function 'FlatSB_SetScrollRange', [:hwnd, User32::Scrollbar, :int, :int, :bool], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-flatsb_showscrollbar
      # @param [FFI::Pointer] hwnd
      # @param [Integer] code
      # @param [true, false] fShow
      # @return [true, false]
      def self.FlatSB_ShowScrollBar(hwnd, code, fShow) end
      attach_function 'FlatSB_ShowScrollBar', [:hwnd, User32::Scrollbar, :bool], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-initializeflatsb
      # @param [FFI::Pointer] hwnd
      # @return [true, false]
      def self.InitializeFlatSB(hwnd) end
      attach_function 'InitializeFlatSB', [:hwnd], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-uninitializeflatsb
      # @param [FFI::Pointer] hwnd
      # @return [Integer]
      def self.UninitializeFlatSB(hwnd) end
      attach_function 'UninitializeFlatSB', [:hwnd], :hresult

      if ARCHITECTURE == 'x86_64'
        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-flatsb_getscrollpropptr
        # BOOL FlatSB_GetScrollPropPtr(HWND  hwnd, UINT  index, LPINT pValue)
        # @param [FFI::Pointer] hwnd
        # @param [Integer] index
        # @param [FFI::Pointer] pValue
        # @return [true, false]
        def self.FlatSB_GetScrollPropPtr(hwnd, index, pValue) end
        attach_function 'FlatSB_GetScrollPropPtr', [:hwnd, FlatScrollBarProperties, :pointer], :bool
      end
    end
  end
end