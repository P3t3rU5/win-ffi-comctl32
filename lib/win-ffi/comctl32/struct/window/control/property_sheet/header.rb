require_relative '../../../../enum/window/control/property_sheet/callback'
require_relative '../../../../enum/window/control/property_sheet/header'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/prsht/nc-prsht-pfnpropsheetcallback
    # int CALLBACK PropSheetProc(HWND   hwndDlg, UINT   uMsg, LPARAM lParam)
    PropSheetProc = callback 'PropSheetProc', [:hwnd, PropertySheetCallback, :lparam], :int

    class PROPSHEETHEADER_UNION1 < FFIAdditions::Struct
      def hIcon; end
      def hIcon=(v) end
      def pszIcon; end
      def pszIcon=(v) end

      layout hIcon:   :hicon,
             pszIcon: :string
    end

    class PROPSHEETHEADER_UNION2 < FFIAdditions::Struct
      def nStartPage; end
      def nStartPage=(v) end
      def pStartPage; end
      def pStartPage=(v) end

      layout nStartPage: :uint,
             pStartPage: :string
    end

    class PROPSHEETHEADER_UNION3 < FFIAdditions::Struct
      def ppsp; end
      def ppsp=(v) end
      def phpage; end
      def phpage=(v) end

      layout ppsp:   :pointer,
             phpage: :pointer
    end

    class PROPSHEETHEADER_UNION4 < FFIAdditions::Struct
      def hbmWatermark; end
      def hbmWatermark=(v) end
      def pszbmWatermark; end
      def pszbmWatermark=(v) end

      layout hbmWatermark:   :hbitmap,
             pszbmWatermark: :string
    end

    class PROPSHEETHEADER_UNION5 < FFIAdditions::Struct
      def hbmHeader; end
      def hbmHeader=(v) end
      def pszbmHeader; end
      def pszbmHeader=(v) end

      layout hbmHeader:   :hbitmap,
             pszbmHeader: :string
    end

    class PROPSHEETHEADER < FFIAdditions::Struct
      def dwSize; end
      def dwSize=(v) end
      def dwFlags; end
      def dwFlags=(v) end
      def hwndParent; end
      def hwndParent=(v) end
      def hInstance; end
      def hInstance=(v) end
      def u1; end
      def u1=(v) end
      def pszCaption; end
      def pszCaption=(v) end
      def nPages; end
      def nPages=(v) end
      def u2; end
      def u2=(v) end
      def u3; end
      def u3=(v) end
      def pfnCallback; end
      def pfnCallback=(v) end
      def u4; end
      def u4=(v) end
      def hplWatermark; end
      def hplWatermark=(v) end
      def u5; end
      def u5=(v) end

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