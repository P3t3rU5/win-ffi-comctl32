
module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../enum/window/control/task_dialog/flag'
    require_relative '../../../../enum/window/control/task_dialog/common_button_flags'
    require_relative 'button'

    module Comctl32
      # typedef HRESULT (CALLBACK *PFTASKDIALOGCALLBACK)(_In_ HWND hwnd, _In_ UINT msg, _In_ WPARAM wParam, _In_ LPARAM lParam, _In_ LONG_PTR lpRefData);
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/nc-commctrl-pftaskdialogcallback
      TaskDialogCallbackProc = callback 'TaskDialogCallbackProc', [:hwnd, :uint, :wparam, :lparam, :long_ptr], :hresult

      class TASKDIALOGCONFIG_UNION_1 < FFIAdditions::Union
        attr_accessor :hMainIcon, :pszMainIcon

        layout hMainIcon:   :hicon,
               pszMainIcon: :string
      end

      class TASKDIALOGCONFIG_UNION_2 < FFIAdditions::Union
        attr_accessor :hFooterIcon, :pszFooterIcon

        layout hFooterIcon:   :hicon,
               pszFooterIcon: :string
      end

      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-taskdialogconfig
      class TASKDIALOGCONFIG < FFIAdditions::Struct
        attr_accessor :cbSize,
                      :hwndParent,
                      :hInstance,
                      :dwFlags,
                      :dwCommonButtons,
                      :pszWindowTitle,
                      :u,
                      :pszMainInstruction,
                      :pszContent,
                      :cButtons,
                      :pButtons,
                      :nDefaultButton,
                      :cRadioButtons,
                      :pRadioButtons,
                      :nDefaultRadioButton,
                      :pszVerificationText,
                      :pszExpandedInformation,
                      :pszExpandedControlText,
                      :pszCollapsedControlText,
                      :u2,
                      :pszFooter,
                      :pfCallback,
                      :lpCallbackData,
                      :cxWidth

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