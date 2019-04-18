require 'win-ffi/comctl32/struct/shell/mruinfo'

module WinFFI
  module Comctl32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb776384
    # @param [FFI::Pointer] hMRU
    # @param [String] szString
    # @return [Integer]
    def self.AddMRUStringW(hMRU, szString) end
    attach_function 'AddMRUStringW', [:handle, :string], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb776394
    # @param [FFI::Pointer] lpmi
    # @return [Integer]
    def self.CreateMRUListW(lpmi) end
    attach_function 'CreateMRUListW', [MRUINFO.ptr], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/shlwapi/nc-shlwapi-dllgetversionproc
    # @param [FFI::Pointer] pdvi
    # @return [Integer]
    def self.DllGetVersion(pdvi) end
    attach_function 'DllGetVersion', [:pointer], :hresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb776412
    # @param [FFI::Pointer] hMRU
    # @param [Integer] nItem
    # @param [FFI::Pointer] lpData
    # @param [Integer] uLen
    # @return [Integer]
    def self.EnumMRUListW(hMRU, nItem, lpData, uLen) end
    attach_function 'EnumMRUListW', [:handle, :int, :pointer, :uint], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb776425
    # @param [FFI::Pointer] hMRU
    # @return [Integer]
    def self.FreeMRUList(hMRU) end
    attach_function 'FreeMRUList', [:handle], :int

    if WINDOWS_VERSION >= :xp
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-defsubclassproc
      # @param [FFI::Pointer] hWnd
      # @param [Integer] uMsg
      # @param [Integer] wParam
      # @param [Integer] lParam
      # @return [Integer]
      def self.DefSubclassProc(hWnd, uMsg, wParam, lParam) end
      attach_function 'DefSubclassProc', [:hwnd, :uint, :wparam, :lparam], :lresult

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nc-commctrl-subclassproc
      # LRESULT ( CALLBACK *SUBCLASSPROC)(
      #   HWND      hWnd,
      #   UINT      uMsg,
      #   WPARAM    wParam,
      #   LPARAM    lParam,
      #   UINT_PTR  uIdSubclass,
      #   DWORD_PTR dwRefData)
      SUBCLASSPROC = callback 'SubClassProc', [:hwnd, :uint, :wparam, :lparam, :uint_ptr, :dword_ptr], :lresult

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-getwindowsubclass
      # BOOL GetWindowSubclass(
      #   _In_  HWND         hWnd,
      #   _In_  SUBCLASSPROC pfnSubclass,
      #   _In_  UINT_PTR     uIdSubclass,
      #   _Out_ DWORD_PTR    *pdwRefData)
      # attach_function 'GetWindowSubclass', [:hwnd, SUBCLASSPROC, :uint_ptr, :dword_ptr], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-removewindowsubclass
      # @param [FFI::Pointer] hWnd
      # @param [SUBCLASSPROC] pfnSubclass
      # @param [Integer] uIdSubclass
      # @return [true, false]
      def self.RemoveWindowSubclass(hWnd, pfnSubclass, uIdSubclass) end
      attach_function 'RemoveWindowSubclass', [:hwnd, SUBCLASSPROC, :uint_ptr], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-setwindowsubclass
      # @param [FFI::Pointer] hWnd
      # @param [SUBCLASSPROC] pfnSubclass
      # @param [Integer] uIdSubclass
      # @param [Integer] dwRefData
      # @return [true, false]
      def self.SetWindowSubclass(hWnd, pfnSubclass, uIdSubclass, dwRefData) end
      attach_function 'SetWindowSubclass', [:hwnd, SUBCLASSPROC, :uint_ptr, :dword_ptr], :bool
    end
  end
end