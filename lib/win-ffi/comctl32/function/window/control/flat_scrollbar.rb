require 'win-ffi/comctl32'

require 'win-ffi/comctl32/enum/window/control/flat_scrollbar_properties'

require 'win-ffi/user32/enum/window/control/scrollbar'
require 'win-ffi/user32/struct/window/control/scrollbar/scroll_info'


module WinFFI
  module Comctl32
    if WINDOWS_VERSION >= :vista
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775430(v=vs.85).aspx
      # BOOL FlatSB_EnableScrollBar(HWND hwnd, int  wSBflags, UINT wArrows)
      attach_function 'FlatSB_EnableScrollBar', [:hwnd, User32::Scrollbar, :uint], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775431(v=vs.85).aspx
      # BOOL FlatSB_GetScrollInfo(HWND         hwnd, int          fnBar, LPSCROLLINFO lpsi)
      attach_function 'FlatSB_GetScrollInfo', [:hwnd, User32::Scrollbar, User32::SCROLLINFO.ptr], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775432(v=vs.85).aspx
      # int FlatSB_GetScrollPos(HWND hwnd, int  code)
      attach_function 'FlatSB_GetScrollPos', [:hwnd, User32::Scrollbar], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775433(v=vs.85).aspx
      # BOOL FlatSB_GetScrollProp(HWND  hwnd, UINT  index, LPINT pValue)
      attach_function 'FlatSB_GetScrollProp', [:hwnd, FlatScrollbarProperties, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775435(v=vs.85).aspx
      # BOOL FlatSB_GetScrollRange(
      #   HWND  hwnd,
      #   int   code,
      #   LPINT lpMinPos,
      #   LPINT lpMaxPos)
      attach_function 'FlatSB_GetScrollRange', [:hwnd, User32::Scrollbar, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775436(v=vs.85).aspx
      # int FlatSB_SetScrollInfo(
      #   HWND         hwnd,
      #   int          fnBar,
      #   LPSCROLLINFO lpsi,
      #   BOOL         fRedraw)
      attach_function 'FlatSB_SetScrollInfo', [:hwnd, User32::Scrollbar, User32::SCROLLINFO.ptr, :bool], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775437(v=vs.85).aspx
      # int FlatSB_SetScrollPos(HWND hwnd, int  code, int  nPos, BOOL fRedraw)
      attach_function 'FlatSB_SetScrollPos', [:hwnd, User32::Scrollbar, :int, :bool], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775438(v=vs.85).aspx
      # BOOL FlatSB_SetScrollProp(HWND    hwnd, UINT    index, INT_PTR newValue, BOOL    fRedraw)
      attach_function 'FlatSB_SetScrollProp', [:hwnd, FlatScrollbarProperties, :pointer, :bool], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775439(v=vs.85).aspx
      # int FlatSB_SetScrollRange(HWND hwnd, int  code, int  nMinPos, int  nMaxPos, BOOL fRedraw)
      attach_function 'FlatSB_SetScrollRange', [:hwnd, User32::Scrollbar, :int, :int, :bool], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775441(v=vs.85).aspx
      # BOOL FlatSB_ShowScrollBar(HWND hwnd, int  code, BOOL fShow)
      attach_function 'FlatSB_ShowScrollBar', [:hwnd, User32::Scrollbar, :bool], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775443(v=vs.85).aspx
      # BOOL InitializeFlatSB(HWND hwnd)
      attach_function 'InitializeFlatSB', [:hwnd], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775446(v=vs.85).aspx
      # HRESULT UninitializeFlatSB(HWND hwnd)
      attach_function 'UninitializeFlatSB', [:hwnd], :hresult
    end

    if ARCHITECTURE == 'x86_64'
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775434(v=vs.85).aspx
      # BOOL FlatSB_GetScrollPropPtr(HWND  hwnd, UINT  index, LPINT pValue)
      attach_function 'FlatSB_GetScrollPropPtr', [:hwnd, FlatScrollbarProperties, :pointer], :bool
    end

  end
end