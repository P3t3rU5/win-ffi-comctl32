require 'win-ffi/core/struct/point'
require_relative '../../../../enum/window/control/listview/hittest_info'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvhittestinfo
    class LVHITTESTINFO < FFIAdditions::Struct
      attr_accessor :pt, :flags, :iItem, :iSubItem

      buffer = {
          pt:       POINT,
          flags:    ListviewHittestInfo,
          iItem:    :int,
          iSubItem: :int
      }

      if WINDOWS_VERSION >= :vista
        attr_accessor :iGroup

        buffer.merge(iGroup: :int)
      end

      layout buffer
    end
  end
end