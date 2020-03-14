require 'win-ffi/core/struct/rect'
require_relative '../../../../typedef/htreeitem'

module WinFFI
  module Comctl32

    TVITEMPART = enum :treeview_item_part, [:BUTTON, 0x0001]

    define_prefix(:TVGIPR, TVITEMPART)

    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tvgetitempartrectinfo
    class TVGETITEMPARTRECTINFO < FFIAdditions::Struct
      attr_accessor :hti, :prc, :partID

      layout hti:    :htreeitem,
             prc:    RECT,
             partID: TVITEMPART
    end
  end
end