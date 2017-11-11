require 'win-ffi/comctl32/struct/shell/mruinfo'

module WinFFI
  module Comctl32

    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb776384%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    # int AddMRUStringW(_In_ HANDLE  hMRU, _In_ LPCTSTR szString)
    attach_function 'AddMRUStringW', [:handle, :string], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb776394(v=vs.85).aspx
    # int CreateMRUListW(_In_ LPMRUINFO lpmi)
    attach_function 'CreateMRUListW', [MRUINFO.ptr], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb776404%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    # HRESULT CALLBACK DllGetVersion(DLLVERSIONINFO *pdvi)
    attach_function 'DllGetVersion', [:pointer], :hresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb776412(v=vs.85).aspx
    # int EnumMRUListW(
    #   _In_  HANDLE hMRU,
    #   _In_  int    nItem,
    #   _Out_ void   *lpData,
    #   _In_  UINT   uLen)
    attach_function 'EnumMRUListW', [:handle, :int, :pointer, :uint], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb776425%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
    # int FreeMRUList(_In_ HANDLE hMRU)
    attach_function 'FreeMRUList', [:handle], :int

    if WINDOWS_VERSION >= :xp
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb776403%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
      # LRESULT DefSubclassProc(
      #   _In_ HWND   hWnd,
      #   _In_ UINT   uMsg,
      #   _In_ WPARAM WPARAM,
      #   _In_ LPARAM LPARAM)
      attach_function 'DefSubclassProc', [:hwnd, :uint, :wparam, :lparam], :lresult

      # typedef LRESULT ( CALLBACK *SUBCLASSPROC)(
      #   HWND      hWnd,
      #   UINT      uMsg,
      #   WPARAM    wParam,
      #   LPARAM    lParam,
      #   UINT_PTR  uIdSubclass,
      #   DWORD_PTR dwRefData)
      SUBCLASSPROC = callback 'SubClassProc', [:hwnd, :uint, :wparam, :lparam, :pointer, :pointer], :lresult

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb776430(v=vs.85).aspx
      # BOOL GetWindowSubclass(
      #   _In_  HWND         hWnd,
      #   _In_  SUBCLASSPROC pfnSubclass,
      #   _In_  UINT_PTR     uIdSubclass,
      #   _Out_ DWORD_PTR    *pdwRefData)
      # attach_function 'GetWindowSubclass', [:hwnd, SUBCLASSPROC, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb762094%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396
      # BOOL RemoveWindowSubclass(
      #   _In_ HWND         hWnd,
      #   _In_ SUBCLASSPROC pfnSubclass,
      #   _In_ UINT_PTR     uIdSubclass)
      attach_function 'RemoveWindowSubclass', [:hwnd, SUBCLASSPROC, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb762102(v=vs.85).aspx
      # BOOL SetWindowSubclass(
      #   _In_ HWND         hWnd,
      #   _In_ SUBCLASSPROC pfnSubclass,
      #   _In_ UINT_PTR     uIdSubclass,
      #   _In_ DWORD_PTR    dwRefData)
      attach_function 'SetWindowSubclass', [:hwnd, SUBCLASSPROC, :pointer, :pointer], :bool
    end
  end
end