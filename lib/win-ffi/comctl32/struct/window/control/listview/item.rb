module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../enum/window/control/listview/item_flag'
    require_relative '../../../../enum/window/control/listview/item_state'
    require_relative '../../../../enum/window/control/listview/identifier'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taglvitema
      class LVITEM < FFIAdditions::Struct
        def mask; end
        def mask=(v) end
        def iItem; end
        def iItem=(v) end
        def iSubItem; end
        def iSubItem=(v) end
        def state; end
        def state=(v) end
        def stateMask; end
        def stateMask=(v) end
        def pszText; end
        def pszText=(v) end
        def cchTextMax; end
        def cchTextMax=(v) end
        def iImage; end
        def iImage=(v) end
        def lParam; end
        def lParam=(v) end
        def iIndent; end
        def iIndent=(v) end

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
          def iGroupId; end
          def iGroupId=(v) end
          def cColumns; end
          def cColumns=(v) end
          def puColumns; end
          def puColumns=(v) end

          buffer.merge(
              iGroupId:   ListViewGroupIdentifier,
              cColumns:   :uint,
              puColumns:  :pointer
          )
          if WINDOWS_VERSION >= :vista
            def piColFmt; end
            def piColFmt=(v) end
            def iGroup; end
            def iGroup=(v) end

            buffer.merge(piColFmt: :pointer, iGroup: :int)
          end
        end

        layout buffer
      end
    end
  end
end