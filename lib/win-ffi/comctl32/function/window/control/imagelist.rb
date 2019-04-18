module WinFFI
  if WINDOWS_VERSION >= :xp
    require_relative '../../../typedef/himagelist'

    module Comctl32
      # TODO
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_readex
      # WINCOMMCTRLAPI HRESULT WINAPI ImageList_ReadEx(
      #   _In_ DWORD dwFlags,
      #   _In_ struct IStream *pstm,
      #   _In_ REFIID riid,
      #   _Outptr_ PVOID* ppv);
      # def self.ImageList_ReadEx(dwFlags, pstm, riid, ppv) end
      # attach_function 'ImageList_ReadEx', [:dword, :pointer, :pointer, :pointer], :hresult

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_writeex
      # WINCOMMCTRLAPI HRESULT WINAPI ImageList_WriteEx(
      #   _In_ HIMAGELIST himl,
      #   _In_ DWORD dwFlags,
      #   _In_ struct IStream *pstm);
      # def self.ImageList_WriteEx(himl, dwFlags, pstm) end
      # attach_function 'ImageList_WriteEx', [:himagelist, :dword, :pointer], :hresult

      if WINDOWS_VERSION >= :vista
        require 'win-ffi/user32/enum/resource/load_resource_flag'
        require 'win-ffi/core/struct/point'

        require_relative '../../../enum/window/control/imagelist/draw'
        require_relative '../../../enum/window/control/imagelist/creation_flag'
        require_relative '../../../enum/window/control/imagelist/copy_flag'

        require_relative '../../../struct/window/control/imagelist/draw_params'
        require_relative '../../../struct/window/control/imagelist/info'

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_add
        # @param [FFI::Pointer] himl
        # @param [FFI::Pointer] hbmImage
        # @param [FFI::Pointer] hbmMask
        # @return [Integer]
        def self.ImageList_Add(himl, hbmImage, hbmMask) end
        attach_function 'ImageList_Add', [:himagelist, :hbitmap, :hbitmap], :int

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_addmasked
        # @param [FFI::Pointer] himl
        # @param [FFI::Pointer] hbmImage
        # @param [Integer] crMask
        # @return [Integer]
        def self.ImageList_AddMasked(himl, hbmImage, crMask) end
        attach_function 'ImageList_AddMasked', [:himagelist, :hbitmap, :colorref], :int

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_begindrag
        # @param [FFI::Pointer] himlTrack
        # @param [Integer] iTrack
        # @param [Integer] dxHotspot
        # @param [Integer] dyHotspot
        # @return [true, false]
        def self.ImageList_BeginDrag(himlTrack, iTrack, dxHotspot, dyHotspot) end
        attach_function 'ImageList_BeginDrag', [:himagelist, :int, :int, :int], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_copy
        # @param [FFI::Pointer] himlDst
        # @param [Integer] iDst
        # @param [FFI::Pointer] himlSrc
        # @param [Integer] iSrc
        # @param [Integer] uFlags
        # @return [true, false]
        def self.ImageList_Copy(himlDst, iDst, himlSrc, iSrc, uFlags) end
        attach_function 'ImageList_Copy', [:himagelist, :int, :himagelist, :int, ImageListCopyFlag], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_create
        # @param [Integer] cx
        # @param [Integer] cy
        # @param [Integer] flags
        # @param [Integer] cInitial
        # @param [Integer] cGrow
        # @return [FFI::Pointer]
        def self.ImageList_Create(cx, cy, flags, cInitial, cGrow) end
        attach_function 'ImageList_Create', [:int, :int, ImageListCreationFlag, :int, :int], :himagelist

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_destroy
        # @param [FFI::Pointer] himl
        # @return [true, false]
        def self.ImageList_Destroy(himl) end
        attach_function 'ImageList_Destroy', [:himagelist], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_dragenter
        # @param [FFI::Pointer] hwndLock
        # @param [Integer] x
        # @param [Integer] y
        # @return [true, false]
        def self.ImageList_DragEnter(hwndLock, x, y) end
        attach_function 'ImageList_DragEnter', [:hwnd, :int, :int], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_dragleave
        # @param [FFI::Pointer] hwndLock
        # @return [true, false]
        def self.ImageList_DragLeave(hwndLock) end
        attach_function 'ImageList_DragLeave', [:hwnd], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_dragmove
        # @param [Integer] x
        # @param [Integer] y
        # @return [true, false]
        def self.ImageList_DragMove(x, y) end
        attach_function 'ImageList_DragMove', [:int, :int], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_dragshownolock
        # @param [true, false] fShow
        # @return [true, false]
        def self.ImageList_DragShowNolock(fShow) end
        attach_function 'ImageList_DragShowNolock', [:bool], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_draw
        # @param [FFI::Pointer] himl
        # @param [Integer] i
        # @param [FFI::Pointer] hdcDst
        # @param [Integer] x
        # @param [Integer] y
        # @param [Integer] fStyle
        # @return [true, false]
        def self.ImageList_Draw(himl, i, hdcDst, x, y, fStyle) end
        attach_function 'ImageList_Draw', [:himagelist, :int, :hdc, :int, :int, ImageListDraw], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_drawex
        # @param [FFI::Pointer] himl
        # @param [Integer] i
        # @param [FFI::Pointer] hdcDst
        # @param [Integer] x
        # @param [Integer] y
        # @param [Integer] dx
        # @param [integer] dy
        # @param [Integer] rgbBk
        # @param [Integer] rgbFg
        # @param [Integer] fStyle
        # @return [true, false]
        def self.ImageList_DrawEx(himl, i, hdcDst, x, y, dx, dy, rgbBk, rgbFg, fStyle) end
        attach_function 'ImageList_DrawEx',
                        [:himagelist, :int, :hdc, :int, :int, :int, :int, :colorref, :colorref, :uint], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_drawindirect
        # @param [IMAGELISTDRAWPARAMS] pimldp
        # @return [true, false]
        def self.ImageList_DrawIndirect(pimldp) end
        attach_function 'ImageList_DrawIndirect', [IMAGELISTDRAWPARAMS], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_duplicate
        # @param [FFI::Pointer] himl
        # @return [FFI::Pointer]
        def self.ImageList_Duplicate(himl) end
        attach_function 'ImageList_Duplicate', [:himagelist], :himagelist

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_enddrag
        # @return [nil]
        def self.ImageList_EndDrag; end
        attach_function 'ImageList_EndDrag', [], :void

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_getbkcolor
        # @param [FFI::Pointer] himl
        # @return [Integer]
        def self.ImageList_GetBkColor(himl) end
        attach_function 'ImageList_GetBkColor', [:himagelist], :colorref

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_getdragimage
        # @param [POINT] ppt
        # @param [POINT] pptHotspot
        # @return [FFI::Pointer]
        def self.ImageList_GetDragImage(ppt, pptHotspot) end
        attach_function 'ImageList_GetDragImage', [POINT.out, POINT.out], :himagelist

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_geticon
        # @param [FFI::Pointer] himl
        # @param [Integer] i
        # @param [Integer] flags
        # @return [FFI::Pointer]
        def self.ImageList_GetIcon(himl, i, flags) end
        attach_function 'ImageList_GetIcon', [:himagelist, :int, ImageListDraw], :hicon

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_geticonsize
        # @param [FFI::Pointer] himl
        # @param [Integer] cx
        # @param [Integer] cy
        # @return [true, false]
        def self.ImageList_GetIconSize(himl, cx, cy) end
        attach_function 'ImageList_GetIconSize', [:himagelist, :pointer, :pointer], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_getimagecount
        # @param [FFI::Pointer] himl
        # @return [Integer]
        def self.ImageList_GetImageCount(himl) end
        attach_function 'ImageList_GetImageCount', [:himagelist], :int

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_getimageinfo
        # @param [FFI::Pointer] himl
        # @param [Integer] i
        # @param [FFI::Pointer] pImageInfo
        # @return [true, false]
        def self.ImageList_GetImageInfo(himl, i, pImageInfo) end
        attach_function 'ImageList_GetImageInfo', [:himagelist, :int, IMAGEINFO.ptr(:out)], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_loadimagea
        # @param [FFI::Pointer] hi
        # @param [String] lpbmp
        # @param [Integer] cx
        # @param [Integer] cGrow
        # @param [Integer] crMask
        # @param [Integer] uType
        # @param [Integer] uFlags
        # @return [FFI::Pointer]
        def self.ImageList_LoadImage(hi, lpbmp, cx, cGrow, crMask, uType, uFlags) end
        encoded_function 'ImageList_LoadImage',
                         [:hinstance, :string, :int, :int, :colorref, :uint, User32::LoadResourceFlag], :himagelist

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_merge
        # @param [FFI::Pointer] himl1
        # @param [Integer] i1
        # @param [FFI::Pointer] himl2
        # @param [Integer] i2
        # @param [Integer] dx
        # @param [Integer] dy
        # @return [FFI::Pointer]
        def self.ImageList_Merge(himl1, i1, himl2, i2, dx, dy) end
        attach_function 'ImageList_Merge', [:himagelist, :int, :himagelist, :int, :int, :int], :himagelist

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_read
        # @param [FFI::Pointer] pstm
        # @return [FFI::Pointer]
        def self.ImageList_Read(pstm) end
        attach_function 'ImageList_Read', [:pointer], :himagelist

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_remove
        # @param [FFI::Pointer] himl
        # @param [Integer] i
        # @return [true, false]
        def self.ImageList_Remove(himl, i) end
        attach_function 'ImageList_Remove', [:himagelist, :int], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_replace
        # @param [FFI::Pointer] himl
        # @param [Integer] i
        # @param [FFI::Pointer] hbmImage
        # @param [FFI::Pointer] hbmMask
        # @return [true, false]
        def self.ImageList_Replace(himl, i, hbmImage, hbmMask) end
        attach_function 'ImageList_Replace', [:himagelist, :int, :hbitmap, :hbitmap], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_replaceicon
        # @param [FFI::Pointer] himl
        # @param [Integer] i
        # @param [FFI::Pointer] hicon
        # @return [Integer]
        def self.ImageList_ReplaceIcon(himl, i, hicon) end
        attach_function 'ImageList_ReplaceIcon', [:himagelist, :int, :hicon], :int

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_setbkcolor
        # @param [FFI::Pointer] himl
        # @param [Integer] clrBk
        # @return [Integer]
        def self.ImageList_SetBkColor(himl, clrBk) end
        attach_function 'ImageList_SetBkColor', [:himagelist, :colorref], :colorref

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_setdragcursorimage
        # @param [FFI::Pointer] himlDrag
        # @param [Integer] iDrag
        # @param [Integer] dxHotspot
        # @param [Integer] dyxHotspot
        # @return [true, false]
        def self.ImageList_SetDragCursorImage(himlDrag, iDrag, dxHotspot, dyxHotspot) end
        attach_function 'ImageList_SetDragCursorImage', [:himagelist, :int, :int, :int], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_seticonsize
        # @param [FFI::Pointer] himl
        # @param [Integer] cx
        # @param [Integer] cy
        # @return [true, false]
        def self.ImageList_SetIconSize(himl, cx, cy) end
        attach_function 'ImageList_SetIconSize', [:himagelist, :int, :int], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_setimagecount
        # @param [FFI::Pointer] himl
        # @param [Integer] uNewCount
        # @return [true, false]
        def self.ImageList_SetImageCount(himl, uNewCount) end
        attach_function 'ImageList_SetImageCount', [:himagelist, :uint], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_setoverlayimage
        # @param [FFI::Pointer] himl
        # @param [Integer] iImage
        # @param [Integer] iOverlay
        # @return [true, false]
        def self.ImageList_SetOverlayImage(himl, iImage, iOverlay) end
        attach_function 'ImageList_SetOverlayImage', [:himagelist, :int, :int], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-imagelist_write
        # @param [FFI::Pointer] himl
        # @param [FFI::Pointer] pstm
        # @return [true, false]
        def self.ImageList_Write(himl, pstm) end
        attach_function 'ImageList_Write', [:himagelist, :pointer], :bool
      end
    end
  end
end
