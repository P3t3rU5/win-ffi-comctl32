require_relative '../../../../enum/window/control/toolbar/insert_mark_hittest'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tbinsertmark
    class TBINSERTMARK < FFIAdditions::Struct
      def iButton; end
      def iButton=(v) end
      def dwFlags; end
      def dwFlags=(v) end

      layout iButton: :int,
             dwFlags: ToolbarInsertMarkHittest
    end
  end
end