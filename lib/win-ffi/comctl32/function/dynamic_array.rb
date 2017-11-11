require 'win-ffi/comctl32/typedef/hdpa'
require 'win-ffi/comctl32/typedef/hdsa'

require 'win-ffi/comctl32/enum/da/dpa_merge'
require 'win-ffi/comctl32/enum/da/dpa_merge_message'
require 'win-ffi/comctl32/enum/da/dpa_search'

require 'win-ffi/comctl32/struct/da/dpa_stream_info'

module WinFFI
  module Comctl32
    if WINDOWS_VERSION >= :vista

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

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775601(v=vs.85).aspx
      # HDPA WINAPI DPA_Clone(_In_        const HDPA hdpaSource, _Inout_opt_       HDPA hdpaNew)
      attach_function 'DPA_Clone', [:hdpa, :hdpa], :hdpa

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775603(v=vs.85).aspx
      # HDPA WINAPI DPA_Create(int cpGrow)
      attach_function 'DPA_Create', [:int], :hdpa

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775605(v=vs.85).aspx
      # HDPA WINAPI DPA_CreateEx(_In_     int    cpGrow, _In_opt_ HANDLE hheap)
      attach_function 'DPA_CreateEx', [:int, :handle], :hdpa

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775607(v=vs.85).aspx
      # BOOL WINAPI DPA_DeleteAllPtrs(HDPA pdpa)
      attach_function 'DPA_DeleteAllPtrs', [:hdpa], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775609(v=vs.85).aspx
      # void* WINAPI DPA_DeletePtr(HDPA pdpa, int  index)
      attach_function 'DPA_DeletePtr', [:hdpa, :int], :pointer

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775611(v=vs.85).aspx
      # BOOL WINAPI DPA_Destroy(HDPA pdpa)
      attach_function 'DPA_Destroy', [:hdpa], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775613(v=vs.85).aspx
      # void WINAPI DPA_DestroyCallback(
      #   HDPA               pdpa,
      #   PFNDPAENUMCALLBACK pfnCB,
      #   void               *pData)
      attach_function 'DPA_DestroyCallback', [:hdpa, PFNDPAENUMCALLBACK, :pointer], :void

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775615(v=vs.85).aspx
      # void WINAPI DPA_EnumCallback( HDPA pdpa, PFNDPAENUMCALLBACK pfnCB, void *pData)
      attach_function 'DPA_EnumCallback', [:hdpa, PFNDPAENUMCALLBACK, :pointer], :void

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775617(v=vs.85).aspx
      # void* WINAPI DPA_GetPtr(HDPA pdpa, int  index)
      attach_function 'DPA_GetPtr', [:hdpa, :int], :pointer

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775619(v=vs.85).aspx
      # int WINAPI DPA_GetPtrIndex(_In_ HDPA hdpa, _In_ const void *pvoid)
      attach_function 'DPA_GetPtrIndex', [:hdpa, :pointer], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775623(v=vs.85).aspx
      # BOOL DPA_Grow(_In_ HDPA hdpa, _In_ int  cp)
      attach_function 'DPA_Grow', [:hdpa, :int], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775625(v=vs.85).aspx
      # int WINAPI DPA_InsertPtr(HDPA pdpa, int index, void *p)
      attach_function 'DPA_InsertPtr', [:hdpa, :int, :pointer], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775627(v=vs.85).aspx
      # HRESULT WINAPI DPA_LoadStream(
      #   _Out_ HDPA         *ppdpa,
      #   _In_  PFNDPASTREAM pfn,
      #   _In_  IStream      *pstm,
      #   _In_  void         *pvInstData)
      attach_function 'DPA_LoadStream', [:hdpa, PFNDPASTREAM, :pointer, :pointer], :hresult

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775629(v=vs.85).aspx
      # BOOL WINAPI DPA_Merge(
      #   _Inout_ HDPA          hdpaDest,
      #   _In_    HDPA          hdpaSrc,
      #   _In_    DWORD         dwFlags,
      #   _In_    PFNDPACOMPARE pfnCompare,
      #   _In_    PFNDPAMERGE   pfnMerge,
      #   _In_    LPARAM        lParam)
      attach_function 'DPA_Merge', [:hdpa, :hdpa, DPAMerge, PFNDPACOMPARE, PFNDPAMERGE, :lparam], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775631(v=vs.85).aspx
      # HRESULT WINAPI DPA_SaveStream(
      #   _In_ HDPA         pdpa,
      #   _In_ PFNDPASTREAM pfn,
      #   _In_ IStream      *pstm,
      #   _In_ void         *pvInstData)
      attach_function 'DPA_SaveStream', [:hdpa, PFNDPASTREAM, :pointer, :pointer], :hresult

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775633(v=vs.85).aspx
      # int WINAPI DPA_Search(
      #   HDPA          pdpa,
      #   void          *pFind,
      #   int           iStart,
      #   PFNDPACOMPARE pfnCmp,
      #   LPARAM        lParam,
      #   UINT          options)
      attach_function 'DPA_Search', [:hdpa, :pointer, :int, PFNDPACOMPARE, :lparam, ], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775635(v=vs.85).aspx
      # BOOL WINAPI DPA_SetPtr(HDPA pdpa, int  index, void *p)
      attach_function 'DPA_SetPtr', [:hdpa, :int, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775637(v=vs.85).aspx
      # BOOL WINAPI DPA_Sort(HDPA pdpa, PFNDPACOMPARE pfnCmp, LPARAM lParam)
      attach_function 'DPA_Sort', [:hdpa, PFNDPACOMPARE, :lparam], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775647(v=vs.85).aspx
      # HDSA WINAPI DSA_Create(_In_ int cbItem, _In_ int cbItemGrow)
      attach_function 'DSA_Create', [:int, :int], :hdsa

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775649(v=vs.85).aspx
      # BOOL DSA_DeleteAllItems(_In_ HDSA hdsa)
      attach_function 'DSA_DeleteAllItems', [:hdsa], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775651(v=vs.85).aspx
      # BOOL WINAPI DSA_DeleteItem(_In_ HDSA hdsa, _In_ int  nPosition)
      attach_function 'DSA_DeleteItem', [:hdsa, :int], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775653(v=vs.85).aspx
      # BOOL WINAPI DSA_Destroy(_In_ HDSA pdsa)
      attach_function 'DSA_Destroy', [:hdsa], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775655(v=vs.85).aspx
      # void WINAPI DSA_DestroyCallback(_In_ HDSA pdsa, _In_ PFNDSAENUMCALLBACK pfnCB, _In_ void *pData)
      attach_function 'DSA_DestroyCallback', [:hdsa, PFNDSAENUMCALLBACK, :pointer], :void

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775657(v=vs.85).aspx
      # void DSA_EnumCallback( _In_ HDSA hdsa, _In_ PFNDAENUMCALLBACK *pfnCB, _In_ void *pData)
      attach_function 'DSA_EnumCallback', [:hdsa, PFNDAENUMCALLBACK, :pointer], :void

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775659(v=vs.85).aspx
      # BOOL WINAPI DSA_GetItem(_In_  HDSA pdsa, _In_  int  index, _Out_ void *pitem)
      attach_function 'DSA_GetItem', [:hdsa, :int, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775661(v=vs.85).aspx
      # void* WINAPI DSA_GetItemPtr(_In_ HDSA pdsa, _In_ int  index)
      attach_function 'DSA_GetItemPtr', [:hdsa, :int], :pointer

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775665(v=vs.85).aspx
      # int WINAPI DSA_InsertItem(
      #   _In_ HDSA pdsa,
      #   _In_ int  index,
      #   _In_ void *pItem)
      attach_function 'DSA_InsertItem', [:hdsa, :int, :pointer], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775668(v=vs.85).aspx
      # BOOL WINAPI DSA_SetItem(
      #   _In_ HDSA hdsa,
      #   _In_ int  index,
      #   _In_ void *pItem)
      attach_function 'DSA_SetItem', [:hdsa, :int, :pointer], :bool
    end
  end
end