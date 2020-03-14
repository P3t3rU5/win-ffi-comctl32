module WinFFI
  module Comctl32
    ListviewInsertMark = enum :listview_insert_mark, [:AFTER, 0x00000001]

    define_prefix(:LVIM, ListviewInsertMark)

    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvinsertmark
    class LVINSERTMARK < FFIAdditions::Struct
      attr_accessor :cbSize, :dwFlags, :iItem, :dwReserved

      layout cbSize:     :uint,
             dwFlags:    ListviewInsertMark,
             iItem:      :int,
             dwReserved: :dword

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize=
    end
  end
end