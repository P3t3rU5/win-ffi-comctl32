module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-datetimepickerinfo
      class DATETIMEPICKERINFO < FFIAdditions::Struct
        attr_accessor :cbSize,
                      :rcCheck,
                      :stateCheck,
                      :rcButton,
                      :stateButton,
                      :hwndEdit,
                      :hwndUD,
                      :hwndDropDown

        layout cbSize:       :dword,
               rcCheck:      RECT,
               stateCheck:   :dword,
               rcButton:     RECT,
               stateButton:  :dword,
               hwndEdit:     :hwnd,
               hwndUD:       :hwnd,
               hwndDropDown: :hwnd
      end
    end
  end
end
