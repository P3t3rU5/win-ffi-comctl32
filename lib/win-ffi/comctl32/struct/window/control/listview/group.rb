require_relative '../../../../enum/window/control/listview/group_flag'
require_relative '../../../../enum/window/control/listview/group_state'
require_relative '../../../../enum/window/control/listview/group_align'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvgroup
    class LVGROUP < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :mask,
                    :pszHeader,
                    :cchHeader,
                    :pszFooter,
                    :cchFooter,
                    :iGroupId,
                    :stateMask,
                    :state,
                    :uAlign

      buffer = {
          cbSize:    :uint,
          mask:      ListviewGroupFlag,
          pszHeader: :string,
          cchHeader: :int,
          pszFooter: :string,
          cchFooter: :int,
          iGroupId:  :int,
          stateMask: :uint,
          state:     ListViewGroupState,
          uAlign:    ListViewGroupAlign
      }

      if WINDOWS_VERSION >= :vista
        attr_accessor :pszSubtitle,
                      :cchSubtitle,
                      :pszTask,
                      :cchTask,
                      :pszDescriptionTop,
                      :cchDescriptionTop,
                      :pszDescriptionBottom,
                      :cchDescriptionBottom,
                      :iTitleImage,
                      :iExtendedImage,
                      :iFirstItem,
                      :cItems,
                      :pszSubsetTitle,
                      :cchSubsetTitle

        buffer.merge(
            pszSubtitle:          :string,
            cchSubtitle:          :uint,
            pszTask:              :string,
            cchTask:              :uint,
            pszDescriptionTop:    :string,
            cchDescriptionTop:    :uint,
            pszDescriptionBottom: :string,
            cchDescriptionBottom: :uint,
            iTitleImage:          :int,
            iExtendedImage:       :int,
            iFirstItem:           :int,
            cItems:               :uint,
            pszSubsetTitle:       :string,
            cchSubsetTitle:       :uint
        )
      end

      layout buffer

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize=
    end
  end
end