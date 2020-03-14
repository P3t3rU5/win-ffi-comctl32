module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../enum/window/control/listview/item_flag'
    require_relative '../../../../enum/window/control/listview/item_state'
    require_relative '../../../../enum/window/control/listview/identifier'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvitema
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvitemw
      class LVITEM < FFIAdditions::Struct
        attr_accessor :mask,
                      :iItem,
                      :iSubItem,
                      :state,
                      :stateMask,
                      :pszText,
                      :cchTextMax,
                      :iImage,
                      :lParam,
                      :iIndent

        buffer = {
            mask:       ListViewItemFlag,
            iItem:      :int,
            iSubItem:   :int,
            state:      ListViewItemState,
            stateMask:  ListViewItemState,
            pszText:    :string,
            cchTextMax: :int,
            iImage:     :int,
            lParam:     :lparam,
            iIndent:    :int
        }

        if WINDOWS_VERSION >= :xp
          attr_accessor :iGroupId, :cColumns, :puColumns

          buffer.merge(
              iGroupId:   ListViewGroupIdentifier,
              cColumns:   :uint,
              puColumns:  :pointer
          )
          if WINDOWS_VERSION >= :vista
            attr_accessor :piColFmt, :iGroup

            buffer.merge(piColFmt: :pointer, iGroup: :int)
          end
        end

        layout buffer
      end
    end
  end
end