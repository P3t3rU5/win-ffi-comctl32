require 'win-ffi/comctl32/enum/window/control/property_sheet/property_sheet_callback'
require 'win-ffi/comctl32/enum/window/control/property_sheet/property_sheet_header'

module WinFFI
  module Comctl32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760815(v=vs.85).aspx
    # int CALLBACK PropSheetProc(HWND   hwndDlg, UINT   uMsg, LPARAM lParam)
    PropSheetProc = callback 'PropSheetProc', [:hwnd, PropertySheetCallback, :lparam], :int

    class PROPSHEETHEADER_UNION1 < FFIAdditions::Struct
      layout hIcon:    :hicon,
             pszIcon: :string
    end

    class PROPSHEETHEADER_UNION2 < FFIAdditions::Struct
      layout nStartPage: :uint,
             pStartPage: :string
    end

    class PROPSHEETHEADER_UNION3 < FFIAdditions::Struct
      layout ppsp:   :pointer,
             phpage: :pointer
    end

    class PROPSHEETHEADER_UNION4 < FFIAdditions::Struct
      layout hbmWatermark:  :hbitmap,
             pszbmWatermark: :string
    end

    class PROPSHEETHEADER_UNION5 < FFIAdditions::Struct
      layout hbmHeader:  :hbitmap,
             pszbmHeader: :string
    end

    class PROPSHEETHEADER < FFIAdditions::Struct
      layout dwSize:               :dword,
             dwFlags: PropertySheetHeader, # TODO
             hwndParent:            :hwnd,
             hInstance:        :hinstance,
             u1:   PROPSHEETHEADER_UNION1,
             pszCaption:          :string,
             nPages:                :uint,
             u2:   PROPSHEETHEADER_UNION2,
             u3:   PROPSHEETHEADER_UNION3,
             pfnCallback:   PropSheetProc,
             u4:   PROPSHEETHEADER_UNION4,
             hplWatermark:      :hpalette,
             u5:   PROPSHEETHEADER_UNION5
    end
  end
end