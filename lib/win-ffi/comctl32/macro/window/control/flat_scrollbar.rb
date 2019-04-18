require_relative '../../../function/window/control/flat_scrollbar'

module WinFFI
  module Comctl32
    #define FlatSB_SetScrollPropPtr FlatSB_SetScrollProp
    def self.FlatSB_SetScrollPropPtr(hwnd, index, pValue) FlatSB_SetScrollProp(hwnd, index, pValue) end
  end
end