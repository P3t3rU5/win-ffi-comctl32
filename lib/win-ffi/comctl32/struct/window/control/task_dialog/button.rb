module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taskdialog_button
      class TASKDIALOG_BUTTON < FFIAdditions::Struct
        layout nButtonID:     :int,
               pszButtonText: :string
      end
    end
  end
end