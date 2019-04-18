module WinFFI
  module Comctl32
    ListviewInsertMark = enum :listview_insert_mark, [:AFTER, 0x00000001]

    define_prefix(:LVIM, ListviewInsertMark)

    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-lvinsertmark
    class LVINSERTMARK < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def dwFlags; end
      def dwFlags=(v) end
      def iItem; end
      def iItem=(v) end
      def dwReserved; end
      def dwReserved=(v) end

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