require 'win-ffi/user32/struct/window/dialog/dlg_template'
require 'win-ffi/user32/function/window/dialog'

require 'win-ffi/comctl32/enum/window/control/property_sheet/property_sheet_page'
require 'win-ffi/comctl32/enum/window/control/property_sheet/property_sheet_page_callback'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32

      class PROPSHEETPAGE < FFIAdditions::Struct; end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760813(v=vs.85).aspx
      # UINT CALLBACK PropSheetPageProc(HWND hwnd, _In_ UINT uMsg, _Inout_ LPPROPSHEETPAGE ppsp)
      PropSheetPageProc = callback 'PropSheetPageProc', [:hwnd, PropertySheetPageCallback, PROPSHEETPAGE.ptr], :uint

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb774548(v=vs.85).aspx
      class PROPSHEETPAGE_UNION < FFIAdditions::Union
        layout pszTemplate:   :string,
               pResource: User32::DLGTEMPLATE
      end

      class PROPSHEETPAGE_UNION_2 < FFIAdditions::Union
        layout hIcon:    :hicon,
               pszIcon: :string
      end

      class PROPSHEETPAGE
        buffer = {
            dwSize:                 :dword,
            dwFlags:     PropertySheetPage,
            hInstance:          :hinstance,
            u1:        PROPSHEETPAGE_UNION,
            u2:      PROPSHEETPAGE_UNION_2,
            pszTitle:              :string,
            pfnDlgProc: User32::DialogProc,
            lParam:                :lparam,
            pfnCallback: PropSheetPageProc,
            pcRefParent:          :pointer,
            pszHeaderTitle:        :string,
            pszHeaderSubTitle:     :string
        }
        if WINDOWS_VERSION >= :xp
          buffer.merge(hActCtx: :handle)
        end

        layout buffer
      end
    end
  end
end