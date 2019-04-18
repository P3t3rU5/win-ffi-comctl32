require_relative '../../../../enum/window/control/listview/group_flag'
require_relative '../../../../enum/window/control/listview/group_state'
require_relative '../../../../enum/window/control/listview/group_align'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taglvgroup
    class LVGROUP < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def mask; end
      def mask=(v) end
      def pszHeader; end
      def pszHeader=(v) end
      def cchHeader; end
      def cchHeader=(v) end
      def pszFooter; end
      def pszFooter=(v) end
      def cchFooter; end
      def cchFooter=(v) end
      def iGroupId; end
      def iGroupId=(v) end
      def stateMask; end
      def stateMask=(v) end
      def state; end
      def state=(v) end
      def uAlign; end
      def uAlign=(v) end

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
        def pszSubtitle; end
        def pszSubtitle=(v) end
        def cchSubtitle; end
        def cchSubtitle=(v) end
        def pszTask; end
        def pszTask=(v) end
        def cchTask; end
        def cchTask=(v) end
        def pszDescriptionTop; end
        def pszDescriptionTop=(v) end
        def cchDescriptionTop; end
        def cchDescriptionTop=(v) end
        def pszDescriptionBottom; end
        def pszDescriptionBottom=(v) end
        def cchDescriptionBottom; end
        def cchDescriptionBottom=(v) end
        def iTitleImage; end
        def iTitleImage=(v) end
        def iExtendedImage; end
        def iExtendedImage=(v) end
        def iFirstItem; end
        def iFirstItem=(v) end
        def cItems; end
        def cItems=(v) end
        def pszSubsetTitle; end
        def pszSubsetTitle=(v) end
        def cchSubsetTitle; end
        def cchSubsetTitle=(v) end

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