require_relative '../../../../typedef/himagelist'

module WinFFI
  module Comctl32
    RebarInfoMask = enum :rebar_info_mask, [:IMAGELIST, 0x00000001]

    define_prefix(:RBIM, RebarInfoMask)

    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-rebarinfo
    class REBARINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def fMask; end
      def fMask=(v) end
      def himl; end
      def himl=(v) end

      layout cbSize: :uint,
             fMask:  RebarInfoMask,
             himl:   :himagelist

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize=
    end
  end
end