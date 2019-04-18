require_relative '../function/dynamic_array'

module WinFFI
  module Comctl32
    DA_LAST = 0x7FFFFFFF
    DA_ERR  = -1

    #define DPA_SortedInsertPtr(hdpa, pFind, iStart, pfnCompare, lParam, options, pitem)  \
    # DPA_InsertPtr(hdpa, DPA_Search(hdpa, pFind, iStart, pfnCompare, lParam, (DPAS_SORTED | (options))), (pitem))
    def self.DPA_SortedInsertPtr(hdpa, pFind, iStart, pfnCompare, lParam, options, pitem)
      DPA_InsertPtr(hdpa, DPA_Search(hdpa, pFind, iStart, pfnCompare, lParam, DPASearch[:SORTED] | options), pitem)
    end

    #define DSA_AppendItem(hdsa, pitem) DSA_InsertItem(hdsa, DA_LAST, pitem)
    def DSA_AppendItem(hdsa, pitem)
      DSA_InsertItem(hdsa, DA_LAST, pitem)
    end

    #define DPA_FastGetPtr(hdpa, i)     (DPA_GetPtrPtr(hdpa)[i])
    def DPA_FastGetPtr(hdpa, i)
      DPA_GetPtrPtr(hdpa)[i]
    end

    #define DPA_AppendPtr(hdpa, pitem)  DPA_InsertPtr(hdpa, DA_LAST, pitem)
    def DPA_AppendPtr(hdpa, pitem)
      DPA_InsertPtr(hdpa, DA_LAST, pitem)
    end
  end
end