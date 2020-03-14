module WinFFI
  if WINDOWS_VERSION >= :xp
    require 'win-ffi/user32/struct/window/control/notification_message/header'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmrebarautobreak
      class NMREBARAUTOBREAK < FFIAdditions::Struct
        attr_accessor :hdr,
                      :uBand,
                      :wID,
                      :lParam,
                      :uMsg,
                      :fStyleCurrent,
                      :fAutoBreak

        layout hdr:           User32::NMHDR,
               uBand:         :uint,
               wID:           :uint,
               lParam:        :lparam,
               uMsg:          :uint,
               fStyleCurrent: :uint,
               fAutoBreak:    :bool
      end
    end
  end
end

