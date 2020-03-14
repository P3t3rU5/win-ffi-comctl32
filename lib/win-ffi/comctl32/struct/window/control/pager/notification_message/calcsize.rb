require 'win-ffi/user32/struct/window/control/notification_message/header'

require_relative '../../../../../enum/window/control/pager/calc_size_flag'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmpgcalcsize
    class NMPGCALCSIZE < FFIAdditions::Struct
      attr_accessor :hdr, :dwFlags, :iWidth, :iHeight

      layout hdr:     User32::NMHDR,
             dwFlags: PagerCalcSizeFlag,
             iWidth:  :int,
             iHeight: :int
    end
  end
end
