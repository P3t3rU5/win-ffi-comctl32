require_relative '../enum/dynamic_array/dpa_merge'
require_relative '../enum/dynamic_array/dpa_merge_message'
require_relative '../enum/dynamic_array/dpa_search'

require_relative '../struct/dynamic_array/dpa_stream_info'

module WinFFI
  module Comctl32
    if WINDOWS_VERSION >= :vista
      typedef :pointer, :hdpa
      typedef :pointer, :hdsa

      # typedef int ( CALLBACK *PFNDPAENUMCALLBACK)(_In_opt_ void *p, _In_opt_ void *pData)
      PFNDPAENUMCALLBACK = callback 'PFNDPAENUMCALLBACK', [:pointer, :pointer], :int

      # typedef int ( CALLBACK *PFNDAENUMCALLBACK)(_In_opt_ void *p, _In_opt_ void *pData)
      PFNDAENUMCALLBACK = callback 'PFNDAENUMCALLBACK', [:pointer, :pointer], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775725(v=vs.85).aspx
      # typedef HRESULT ( CALLBACK *PFNDPASTREAM)(
      #   _In_     DPASTREAMINFO  *pinfo,
      #   _In_     struct IStream *pstream,
      #   _In_opt_ void           *pvInstData)
      PFNDPASTREAM = callback 'PFNDPASTREAM', [DPASTREAMINFO, :pointer, :pointer], :hresult

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775715(v=vs.85).aspx
      # typedef int ( CALLBACK *PFNDPACOMPARE)(_In_opt_ void   *p1, _In_opt_ void   *p2, _In_ LPARAM lParam)
      PFNDPACOMPARE = callback 'PFNDPACOMPARE', [:pointer, :pointer, :lparam], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775721(v=vs.85).aspx
      # typedef void* ( CALLBACK *PFNDPAMERGE)(
      #   _In_ UINT   uMsg,
      #   _In_ void   *pvDest,
      #   _In_ void   *pvSrc,
      #   _In_ LPARAM lParam)
      PFNDPAMERGE = callback 'PFNDPAMERGE', [DPAMergeMessage, :pointer, :pointer, :lparam], :pointer

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775727(v=vs.85).aspx
      # typedef int ( CALLBACK *PFNDSAENUMCALLBACK)(_In_opt_ void *p, _In_opt_ void *pData)
      PFNDSAENUMCALLBACK = callback 'PFNDSAENUMCALLBACK', [:pointer, :pointer], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nc-dpa_dsa-pfndacompare
      # typedef int (CALLBACK *PFNDACOMPARE)(_In_opt_ void *p1, _In_opt_ void *p2, _In_ LPARAM lParam);
      PFNDACOMPARE = callback 'PFNDACOMPARE', [:pointer, :pointer, :lparam], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_clone
      # @param [FFI::Pointer] hdpaSource
      # @param [FFI::Pointer] hdpaNew
      # @return [FFI::Pointer]
      def self.DPA_Clone(hdpaSource, hdpaNew) end
      attach_function 'DPA_Clone', [:hdpa, :hdpa], :hdpa

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_create
      # @param [Integer] cpGrow
      # @return [FFI::Pointer]
      def self.DPA_Create(cpGrow) end
      attach_function 'DPA_Create', [:int], :hdpa

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_createex
      # @param [Integer] cpGrow
      # @param [FFI::Pointer] hheap
      # @return [FFI::Pointer]
      def self.DPA_CreateEx(cpGrow, hheap) end
      attach_function 'DPA_CreateEx', [:int, :handle], :hdpa

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_deleteallptrs
      # @param [FFI::Pointer] pdpa
      # @return [true, false]
      def self.DPA_DeleteAllPtrs(pdpa) end
      attach_function 'DPA_DeleteAllPtrs', [:hdpa], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_deleteptr
      # @param [FFI::Pointer] pdpa
      # @param [Integer] index
      # @return [FFI::Pointer]
      def self.DPA_DeletePtr(pdpa, index) end
      attach_function 'DPA_DeletePtr', [:hdpa, :int], :pointer

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_destroy
      # @param [FFI::Pointer] pdpa
      # @return [true, false]
      def self.DPA_Destroy(pdpa) end
      attach_function 'DPA_Destroy', [:hdpa], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_destroycallback
      # @param [FFI::Pointer] pdpa
      # @param [PFNDPAENUMCALLBACK] pfnCB
      # @param [FFI::Pointer] pData
      def self.DPA_DestroyCallback(pdpa, pfnCB, pData) end
      attach_function 'DPA_DestroyCallback', [:hdpa, PFNDPAENUMCALLBACK, :pointer], :void

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_enumcallback
      # @param [FFI::Pointer] pdpa
      # @param [PFNDPAENUMCALLBACK] pfnCB
      # @param [FFI::Pointer] pData
      def self.DPA_EnumCallback(pdpa, pfnCB, pData) end
      attach_function 'DPA_EnumCallback', [:hdpa, PFNDPAENUMCALLBACK, :pointer], :void

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_getptr
      # @param [FFI::Pointer] pdpa
      # @param [Integer] index
      # @return [FFI::Pointer]
      def self.DPA_GetPtr(pdpa, index) end
      attach_function 'DPA_GetPtr', [:hdpa, :int], :pointer

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775619
      # @param [FFI::Pointer] hdpa
      # @param [FFI::Pointer] pvoid
      # @return [Integer]
      def self.DPA_GetPtrIndex(hdpa, pvoid) end
      attach_function 'DPA_GetPtrIndex', [:hdpa, :pointer], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_getsize
      # @param [FFI::Pointer] hdpa
      # @return [Integer]
      # def self.DPA_GetSize(hdpa) end
      # attach_function 'DPA_GetSize', [:hdpa], :ulonglong

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_grow
      # @param [FFI::Pointer] hdpa
      # @param [Integer] cp
      # @return [true, false]
      def self.DPA_Grow(hdpa, cp) end
      attach_function 'DPA_Grow', [:hdpa, :int], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_insertptr
      # @param [FFI::Pointer] pdpa
      # @param [Integer] index
      # @param [FFI::Pointer] p
      # @return [Integer]
      def self.DPA_InsertPtr(pdpa, index, p) end
      attach_function 'DPA_InsertPtr', [:hdpa, :int, :pointer], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_loadstream
      # @param [FFI::Pointer] ppdpa
      # @param [PFNDPASTREAM] pfn
      # @param [FFI::Pointer] pstm
      # @param [FFI::Pointer] pvInstData
      # @return [Integer]
      def self.DPA_LoadStream(ppdpa, pfn, pstm, pvInstData) end
      attach_function 'DPA_LoadStream', [:hdpa, PFNDPASTREAM, :pointer, :pointer], :hresult

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_merge
      # @param [FFI::Pointer] hdpaDest
      # @param [FFI::Pointer] hdpaSrc
      # @param [DPAMerge] dwFlags
      # @param [PFNDPACOMPARE] pfnCompare
      # @param [PFNDPAMERGE] pfnMerge
      # @param [Integer] lParam
      # @return [true, false]
      def self.DPA_Merge(hdpaDest, hdpaSrc, dwFlags, pfnCompare, pfnMerge, lParam) end
      attach_function 'DPA_Merge', [:hdpa, :hdpa, DPAMerge, PFNDPACOMPARE, PFNDPAMERGE, :lparam], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_savestream
      # @param [FFI::Pointer] pdpa
      # @param [PFNDPASTREAM] pfn
      # @param [FFI::Pointer] pstm
      # @param [FFI::Pointer] pvInstData
      # @return [Integer]
      def self.DPA_SaveStream(pdpa, pfn, pstm, pvInstData) end
      attach_function 'DPA_SaveStream', [:hdpa, PFNDPASTREAM, :pointer, :pointer], :hresult

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_search
      # @param [FFI::Pointer] pdpa
      # @param [FFI::Pointer] pFind
      # @param [Integer] iStart
      # @param [PFNDPACOMPARE] pfnCmp
      # @param [Integer] lParam
      # @param [Integer] options
      # @return [Integer]
      def self.DPA_Search(pdpa, pFind, iStart, pfnCmp, lParam, options) end
      attach_function 'DPA_Search', [:hdpa, :pointer, :int, PFNDPACOMPARE, :lparam, :uint], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_setptr
      # @param [FFI::Pointer] pdpa
      # @param [Integer] index
      # @param [FFI::Pointer] p
      # @return [true, false]
      def self.DPA_SetPtr(pdpa, index, p) end
      attach_function 'DPA_SetPtr', [:hdpa, :int, :pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dpa_sort
      # @param [FFI::Pointer] pdpa
      # @param [PFNDPACOMPARE] pfnCmp
      # @param [Integer] lParam
      # @return [true, false]
      def self.DPA_Sort(pdpa, pfnCmp, lParam) end
      attach_function 'DPA_Sort', [:hdpa, PFNDPACOMPARE, :lparam], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dsa_clone
      # @param [FFI::Pointer] hdsa
      # @return [FFI::Pointer]
      # def self.DSA_Clone(hdsa) end
      # attach_function 'DSA_Clone', [:hdsa], :hdsa

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dsa_create
      # @param [Integer] cbItem
      # @param [Integer] cbItemGrow
      # @return [FFI::Pointer]
      def self.DSA_Create(cbItem, cbItemGrow) end
      attach_function 'DSA_Create', [:int, :int], :hdsa

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dsa_deleteallitems
      # @param [FFI::Pointer] hdsa
      # @return [true, false]
      def self.DSA_DeleteAllItems(hdsa) end
      attach_function 'DSA_DeleteAllItems', [:hdsa], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dsa_deleteitem
      # @param [FFI::Pointer] hdsa
      # @param [Integer] nPosition
      # @return [true, false]
      def self.DSA_DeleteItem(hdsa, nPosition) end
      attach_function 'DSA_DeleteItem', [:hdsa, :int], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dsa_destroy
      # @param [FFI::Pointer] pdsa
      # @return [true, false]
      def self.DSA_Destroy(pdsa) end
      attach_function 'DSA_Destroy', [:hdsa], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dsa_destroycallback
      # @param [FFI::Pointer] pdsa
      # @param [PFNDSAENUMCALLBACK] pfnCB
      # @param [FFI::Pointer] pData
      def self.DSA_DestroyCallback(pdsa, pfnCB, pData) end
      attach_function 'DSA_DestroyCallback', [:hdsa, PFNDSAENUMCALLBACK, :pointer], :void

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dsa_enumcallback
      # @param [FFI::Pointer] hdsa
      # @param [PFNDAENUMCALLBACK] pfnCB
      # @param [FFI::Pointer] pData
      def self.DSA_EnumCallback(hdsa, pfnCB, pData) end
      attach_function 'DSA_EnumCallback', [:hdsa, PFNDAENUMCALLBACK, :pointer], :void

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dsa_getitem
      # @param [FFI::Pointer] pdsa
      # @param [Integer] index
      # @param [FFI::Pointer] pitem
      # @return [true, false]
      def self.DSA_GetItem(pdsa, index, pitem) end
      attach_function 'DSA_GetItem', [:hdsa, :int, :pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dsa_getitemptr
      # @param [FFI::Pointer] pdsa
      # @param [Integer] index
      # @return [FFI::Pointer]
      def self.DSA_GetItemPtr(pdsa, index) end
      attach_function 'DSA_GetItemPtr', [:hdsa, :int], :pointer

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dsa_getsize
      # @param [FFI::Pointer] hdsa
      # @return [Integer]
      # def self.DSA_GetSize(hdsa) end
      # attach_function 'DSA_GetSize', [:hdsa], :ulonglong

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dsa_insertitem
      # @param [FFI::Pointer] pdsa
      # @param [Integer] index
      # @param [FFI::Pointer] pItem
      # @return [Integer]
      def self.DSA_InsertItem(pdsa, index, pItem) end
      attach_function 'DSA_InsertItem', [:hdsa, :int, :pointer], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dsa_setitem
      # @param [FFI::Pointer] hdsa
      # @param [Integer] index
      # @param [FFI::Pointer] pItem
      # @return [true, false]
      def self.DSA_SetItem(hdsa, index, pItem) end
      attach_function 'DSA_SetItem', [:hdsa, :int, :pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/dpa_dsa/nf-dpa_dsa-dsa_sort
      # @param [FFI::Pointer] pdsa
      # @param [PFNDACOMPARE] pfnCompare
      # @param [Integer] lParam
      # @return [true, false]
      # def self.DSA_Sort(pdsa, pfnCompare, lParam) end
      # attach_function 'DSA_Sort', [:hdsa, PFNDACOMPARE, :lparam], :bool
    end
  end
end