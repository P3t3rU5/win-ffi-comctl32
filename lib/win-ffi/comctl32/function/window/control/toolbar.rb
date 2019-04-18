require_relative '../../../struct/color_map'
require_relative '../../../enum/window/control/create_mapped_bitmap_flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-createmappedbitmap
    # @param [FFI::Pointer] hInstance
    # @param [Integer] idBitmap
    # @param [Integer] wFlags
    # @param [FFI::Pointer] lpColorMap
    # @param [Integer] iNumMaps
    # @return [FFI::Pointer]
    def self.CreateMappedBitmap(hInstance, idBitmap, wFlags, lpColorMap, iNumMaps) end
    attach_function 'CreateMappedBitmap', [:hinstance, :int_ptr, CreateMappedBitmapFlag, COLORMAP.ptr, :int], :hbitmap

      # Deprecated
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-createtoolbarex
      # @param [FFI::Pointer] hwnd
      # @param [Integer] ws
      # @param [Integer] wID
      # @param [Integer] nBitmaps
      # @param [FFI::Pointer] hBMInst
      # @param [Integer] wBMID
      # @param [FFI::Pointer] lpButtons
      # @param [Integer] iNumButtons
      # @param [Integer] dxButton
      # @param [Integer] dyButton
      # @param [Integer] dxBitmap
      # @param [Integer] dyBitmap
      # @param [Integer] uStructSize
      # @return [FFI::Pointer]
    def self.CreateToolbarEx(hwnd, ws, wID, nBitmaps, hBMInst, wBMID, lpButtons, iNumButtons, dxButton, dyButton,
        dxBitmap, dyBitmap, uStructSize) end
    attach_function 'CreateToolbarEx',
                    [:hwnd, :dword, :uint, :int, :hinstance, :uint_ptr, :pointer, :int, :int, :int, :int, :int, :uint], :hwnd
  end
end