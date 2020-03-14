require_relative '../../../../enum/window/control/property_sheet/callback'
require_relative '../../../../enum/window/control/property_sheet/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/prsht/nc-prsht-pfnpropsheetcallback
    # int CALLBACK PropSheetProc(HWND   hwndDlg, UINT   uMsg, LPARAM lParam)
    PropSheetProc = callback 'PropSheetProc', [:hwnd, PropertySheetCallback, :lparam], :int

    class PROPSHEETHEADER_UNION1 < FFIAdditions::Struct
      attr_accessor :hIcon, :pszIcon

      layout hIcon:   :hicon,
             pszIcon: :string
    end

    class PROPSHEETHEADER_UNION2 < FFIAdditions::Struct
      attr_accessor :nStartPage, :pStartPage

      layout nStartPage: :uint,
             pStartPage: :string
    end

    class PROPSHEETHEADER_UNION3 < FFIAdditions::Struct
      attr_accessor :ppsp, :phpage

      layout ppsp:   :pointer,
             phpage: :pointer
    end

    class PROPSHEETHEADER_UNION4 < FFIAdditions::Struct
      attr_accessor :hbmWatermark, :pszbmWatermark

      layout hbmWatermark:   :hbitmap,
             pszbmWatermark: :string
    end

    class PROPSHEETHEADER_UNION5 < FFIAdditions::Struct
      attr_accessor :hbmHeader, :pszbmHeader

      layout hbmHeader:   :hbitmap,
             pszbmHeader: :string
    end

    class PROPSHEETHEADER < FFIAdditions::Struct
      attr_accessor :dwSize,
                    :dwFlags,
                    :hwndParent,
                    :hInstance,
                    :u1,
                    :pszCaption,
                    :nPages,
                    :u2,
                    :u3,
                    :pfnCallback,
                    :u4,
                    :hplWatermark,
                    :u5

      layout dwSize:       :dword,
             dwFlags:      PropertySheetHeader, # TODO
             hwndParent:   :hwnd,
             hInstance:    :hinstance,
             u1:           PROPSHEETHEADER_UNION1,
             pszCaption:   :string,
             nPages:       :uint,
             u2:           PROPSHEETHEADER_UNION2,
             u3:           PROPSHEETHEADER_UNION3,
             pfnCallback:  PropSheetProc,
             u4:           PROPSHEETHEADER_UNION4,
             hplWatermark: :hpalette,
             u5:           PROPSHEETHEADER_UNION5
    end
  end
end