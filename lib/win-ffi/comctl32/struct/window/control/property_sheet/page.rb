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
        def pszTemplate; end
        def pszTemplate=(v) end
        def pResource; end
        def pResource=(v) end

        layout pszTemplate: :string,
               pResource:   User32::DLGTEMPLATE
      end

      class PROPSHEETPAGE_UNION_2 < FFIAdditions::Union
        def hIcon; end
        def hIcon=(v) end
        def pszIcon; end
        def pszIcon=(v) end

        layout hIcon:   :hicon,
               pszIcon: :string
      end

      class PROPSHEETPAGE
        def dwSize; end
        def dwSize=(v) end
        def dwFlags; end
        def dwFlags=(v) end
        def hInstance; end
        def hInstance=(v) end
        def u1; end
        def u1=(v) end
        def u2; end
        def u2=(v) end
        def pszTitle; end
        def pszTitle=(v) end
        def pfnDlgProc; end
        def pfnDlgProc=(v) end
        def lParam; end
        def lParam=(v) end
        def pfnCallback; end
        def pfnCallback=(v) end
        def pcRefParent; end
        def pcRefParent=(v) end
        def pszHeaderTitle; end
        def pszHeaderTitle=(v) end
        def pszHeaderSubTitle; end
        def pszHeaderSubTitle=(v) end

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
          def hActCtx; end
          def hActCtx=(v) end

          buffer.merge(hActCtx: :handle)
        end

        layout buffer
      end
    end
  end
end