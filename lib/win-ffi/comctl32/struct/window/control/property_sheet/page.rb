module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/struct/window/dialog/dlg_template'
    require 'win-ffi/user32/function/window/dialog'

    require_relative '../../../../enum/window/control/property_sheet/page'
    require_relative '../../../../enum/window/control/property_sheet/page_callback'

    module Comctl32
      class PROPSHEETPAGE < FFIAdditions::Struct; end

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760813(v=vs.85).aspx
      # UINT CALLBACK PropSheetPageProc(HWND hwnd, _In_ UINT uMsg, _Inout_ LPPROPSHEETPAGE ppsp)
      PropSheetPageProc = callback 'PropSheetPageProc', [:hwnd, PropertySheetPageCallback, PROPSHEETPAGE.ptr], :uint

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb774548(v=vs.85).aspx
      class PROPSHEETPAGE_UNION < FFIAdditions::Union
        attr_accessor :pszTemplate, :pResource

        layout pszTemplate: :string,
               pResource:   User32::DLGTEMPLATE
      end

      class PROPSHEETPAGE_UNION_2 < FFIAdditions::Union
        attr_accessor :hIcon, :pszIcon

        layout hIcon:   :hicon,
               pszIcon: :string
      end

      class PROPSHEETPAGE
        attr_accessor :dwSize,
                      :dwFlags,
                      :hInstance,
                      :u1,
                      :u2,
                      :pszTitle,
                      :pfnDlgProc,
                      :lParam,
                      :pfnCallback,
                      :pcRefParent,
                      :pszHeaderTitle,
                      :pszHeaderSubTitle

        buffer = {
            dwSize:            :dword,
            dwFlags:           PropertySheetPage,
            hInstance:         :hinstance,
            u1:                PROPSHEETPAGE_UNION,
            u2:                PROPSHEETPAGE_UNION_2,
            pszTitle:          :string,
            pfnDlgProc:        User32::DialogProc,
            lParam:            :lparam,
            pfnCallback:       PropSheetPageProc,
            pcRefParent:       :pointer,
            pszHeaderTitle:    :string,
            pszHeaderSubTitle: :string
        }

        if WINDOWS_VERSION >= :xp
          attr_accessor :hActCtx

          buffer.merge(hActCtx: :handle)
        end

        layout buffer
      end
    end
  end
end