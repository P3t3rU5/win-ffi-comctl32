require 'win-ffi/comctl32/struct/window/control/init_common_controls_ex'

require 'win-ffi/core/struct/rect'

module WinFFI
  module Comctl32
    if WINDOWS_VERSION >= :vista
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775674(v=vs.85).aspx
      # void GetEffectiveClientRect(HWND   hWnd, LPRECT lprc, _In_ const INT    *lpInfo)
      attach_function 'GetEffectiveClientRect', [:hwnd, RECT.ptr, :pointer], :void

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775676(v=vs.85).aspx
      # LANGID GetMUILanguage(void)
      attach_function 'GetMUILanguage', [], :langid

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775695(v=vs.85).aspx
      # void InitCommonControls(void);
      attach_function 'InitCommonControls', [], :void

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775697(v=vs.85).aspx
      # BOOL InitCommonControlsEx( _In_  const LPINITCOMMONCONTROLSEX lpInitCtrls)
      attach_function 'InitCommonControlsEx', [INITCOMMONCONTROLSEX.ptr], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775699(v=vs.85).aspx
      # VOID InitMUILanguage(LANGID uiLang)
      attach_function 'InitMUILanguage', [:langid], :void

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775731(v=vs.85).aspx
      # BOOL ShowHideMenuCtl(HWND     hWnd, UINT_PTR uFlags, LPINT    lpInfo)
      attach_function 'ShowHideMenuCtl', [:hwnd, :uint, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775735(v=vs.85).aspx
      # BOOL WINAPI Str_SetPtr(_Inout_ LPTSTR  *ppszCurrent, LPCTSTR pszNew)
      attach_function 'Str_SetPtrW', [:pointer, :string], :bool
    end
  end
end