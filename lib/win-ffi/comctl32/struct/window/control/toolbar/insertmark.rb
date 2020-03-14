require_relative '../../../../enum/window/control/toolbar/insert_mark_hittest'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tbinsertmark
    class TBINSERTMARK < FFIAdditions::Struct
      attr_accessor :iButton, :dwFlags

      layout iButton: :int,
             dwFlags: ToolbarInsertMarkHittest
    end
  end
end