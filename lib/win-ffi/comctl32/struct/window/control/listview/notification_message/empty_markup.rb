module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      require 'win-ffi/user32/struct/window/control/notification_message/header'
      require_relative '../../../../../constant'

      EmptyMarkupFlag = enum :empty_markup_flag, [:CENTERED, 0x00000001]

      define_prefix(:EMF, EmptyMarkupFlag)

      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmlvemptymarkup
      class NMLVEMPTYMARKUP < FFIAdditions::Struct
        attr_accessor :hdr, :dwFlags, :szMarkup

        layout hdr:      User32::NMHDR,
               dwFlags:  EmptyMarkupFlag,
               szMarkup: [:wchar, L_MAX_URL_LENGTH]
      end
    end
  end
end