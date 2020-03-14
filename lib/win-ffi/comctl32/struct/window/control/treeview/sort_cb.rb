require_relative '../../../../typedef/htreeitem'

module WinFFI
  module Comctl32
    # typedef int (CALLBACK *PFNTVCOMPARE)(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort);
    CompareFunc = callback 'CompareFunc', [:lparam, :lparam, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-tvsortcb
    class TVSORTCB < FFIAdditions::Struct
      attr_accessor :hParent, :lpfnCompare, :lParam

      layout hParent:     :htreeitem,
             lpfnCompare: CompareFunc,
             lParam:      :lparam
    end
  end
end