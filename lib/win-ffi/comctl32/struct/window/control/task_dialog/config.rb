
module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../enum/window/control/task_dialog/flag'
    require_relative '../../../../enum/window/control/task_dialog/common_button_flags'
    require_relative 'button'

    module Comctl32
      # typedef HRESULT (CALLBACK *PFTASKDIALOGCALLBACK)(_In_ HWND hwnd, _In_ UINT msg, _In_ WPARAM wParam, _In_ LPARAM lParam, _In_ LONG_PTR lpRefData);
      TaskDialogCallbackProc = callback 'TaskDialogCallbackProc', [:hwnd, :uint, :wparam, :lparam, :long_ptr], :hresult

      class TASKDIALOGCONFIG_UNION_1 < FFIAdditions::Union
        def hMainIcon; end
        def hMainIcon=(v) end
        def pszMainIcon; end
        def pszMainIcon=(v) end

        layout hMainIcon:   :hicon,
               pszMainIcon: :string
      end

      class TASKDIALOGCONFIG_UNION_2 < FFIAdditions::Union
        def hFooterIcon; end
        def hFooterIcon=(v) end
        def pszFooterIcon; end
        def pszFooterIcon=(v) end

        layout hFooterIcon:   :hicon,
               pszFooterIcon: :string
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taskdialogconfig
      class TASKDIALOGCONFIG < FFIAdditions::Struct
        def cbSize; end
        def cbSize=(v) end
        def hwndParent; end
        def hwndParent=(v) end
        def hInstance; end
        def hInstance=(v) end
        def dwFlags; end
        def dwFlags=(v) end
        def dwCommonButtons; end
        def dwCommonButtons=(v) end
        def pszWindowTitle; end
        def pszWindowTitle=(v) end
        def u; end
        def u=(v) end
        def pszMainInstruction; end
        def pszMainInstruction=(v) end
        def pszContent; end
        def pszContent=(v) end
        def cButtons; end
        def cButtons=(v) end
        def pButtons; end
        def pButtons=(v) end
        def nDefaultButton; end
        def nDefaultButton=(v) end
        def cRadioButtons; end
        def cRadioButtons=(v) end
        def pRadioButtons; end
        def pRadioButtons=(v) end
        def nDefaultRadioButton; end
        def nDefaultRadioButton=(v) end
        def pszVerificationText; end
        def pszVerificationText=(v) end
        def pszExpandedInformation; end
        def pszExpandedInformation=(v) end
        def pszExpandedControlText; end
        def pszExpandedControlText=(v) end
        def pszCollapsedControlText; end
        def pszCollapsedControlText=(v) end
        def u2; end
        def u2=(v) end
        def pszFooter; end
        def pszFooter=(v) end
        def pfCallback; end
        def pfCallback=(v) end
        def lpCallbackData; end
        def lpCallbackData=(v) end
        def cxWidth; end
        def cxWidth=(v) end

        layout cbSize:                  :uint,
               hwndParent:              :hwnd,
               hInstance:               :hinstance,
               dwFlags:                 TASKDIALOG_FLAGS,
               dwCommonButtons:         TASKDIALOG_COMMON_BUTTON_FLAGS,
               pszWindowTitle:          :string,
               u:                       TASKDIALOGCONFIG_UNION_1,
               pszMainInstruction:      :string,
               pszContent:              :string,
               cButtons:                :uint,
               # const TASKDIALOG_BUTTON  *pButtons;
               pButtons:                TASKDIALOG_BUTTON.ptr,
               nDefaultButton:          :int,
               cRadioButtons:           :uint,
               # const TASKDIALOG_BUTTON  *pRadioButtons;
               pRadioButtons:           TASKDIALOG_BUTTON.ptr,
               nDefaultRadioButton:     :int,
               pszVerificationText:     :string,
               pszExpandedInformation:  :string,
               pszExpandedControlText:  :string,
               pszCollapsedControlText: :string,
               u2:                      TASKDIALOGCONFIG_UNION_2,
               pszFooter:               :string,
               pfCallback:              TaskDialogCallbackProc,
               lpCallbackData:          :long_ptr,
               cxWidth:                 :uint

        def initialize
          super
          self.cbSize = self.size
        end

        private :cbSize=
      end
    end
  end
end