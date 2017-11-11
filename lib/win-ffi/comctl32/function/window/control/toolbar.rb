require 'win-ffi/comctl32/struct/color_map'
require 'win-ffi/comctl32/enum/window/control/create_mapped_bitmap_flag'

module WinFFI
  module Comctl32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787467(v=vs.85).aspx
    # HBITMAP CreateMappedBitmap(
    #   HINSTANCE  hInstance,
    #   INT_PTR    idBitmap,
    #   UINT       wFlags,
    #   _In_ LPCOLORMAP lpColorMap,
    #   int        iNumMaps)
    attach_function 'CreateMappedBitmap', [:hinstance, :pointer, CreateMappedBitmapFlag, COLORMAP.ptr, :int], :hbitmap

    # Deprecated
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787469(v=vs.85).aspx
    # HWND CreateToolbarEx(
    #   HWND        hwnd,
    #   DWORD       ws,
    #   UINT        wID,
    #   int         nBitmaps,
    #   HINSTANCE   hBMInst,
    #   UINT_PTR    wBMID,
    #   LPCTBBUTTON lpButtons,
    #   int         iNumButtons,
    #   int         dxButton,
    #   int         dyButton,
    #   int         dxBitmap,
    #   int         dyBitmap,
    #   UINT        uStructSize)
    attach_function 'CreateToolbarEx', [:hwnd, :dword, :uint, :int, :hinstance, :pointer, :pointer, :int, :int, :int, :int, :int, :uint], :hwnd


  end
end