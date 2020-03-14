module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvtileinfo
    class LVTILEINFO < FFIAdditions::Struct
      attr_accessor :cbSize, :iItem, :cColumns, :puColumns

      buffer = {
          cbSize:    :uint,
          iItem:     :int,
          cColumns:  :uint,
          puColumns: :pointer
      }

      if WINDOWS_VERSION >= :vista
        attr_accessor :piColFmt

        buffer.merge(piColFmt: :pointer)
      end

      layout buffer
    end
  end
end

