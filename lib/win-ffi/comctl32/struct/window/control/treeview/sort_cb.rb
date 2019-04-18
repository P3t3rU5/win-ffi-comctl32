require_relative '../../../../typedef/htreeitem'

module WinFFI
  module Comctl32
    # typedef int (CALLBACK *PFNTVCOMPARE)(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort);
    CompareFunc = callback 'CompareFunc', [:lparam, :lparam, :lparam], :int
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-tagtvsortcb
    class TVSORTCB < FFIAdditions::Struct
      def hParent; end
      def hParent=(v) end
      def lpfnCompare; end
      def lpfnCompare=(v) end
      def lParam; end
      def lParam=(v) end

      layout hParent:     :htreeitem,
             lpfnCompare: CompareFunc,
             lParam:      :lparam
    end
  end
end