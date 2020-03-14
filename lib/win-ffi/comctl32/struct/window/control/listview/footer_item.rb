module WinFFI
  module Comctl32
    ListviewFooterItemFlag = enum :listview_footer_item_flag, [:TEXT,  0x00000001, :STATE, 0x00000002]

    define_prefix(:LVFIF, ListviewFooterItemFlag)

    ListviewFooterItemState = enum :listview_footer_item_state, [:FOCUSED,  0x0001]

    define_prefix(:LVFIS, ListviewFooterItemState)

    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvfooteritem
    class LVFOOTERITEM < FFIAdditions::Struct
      attr_accessor :mask,
                    :iItem,
                    :pszText,
                    :cchTextMax,
                    :state,
                    :stateMask

      layout mask:       ListviewFooterItemFlag,
             iItem:      :int,
             pszText:    :string,
             cchTextMax: :int,
             state:      ListviewFooterItemState,
             stateMask:  ListviewFooterItemState
    end
  end
end

