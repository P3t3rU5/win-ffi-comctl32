require 'win-ffi/comctl32'

module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/user32/enum/resource/load_resource_flag'
    require 'win-ffi/core/struct/point'

    require 'win-ffi/comctl32/typedef/himagelist'

    require 'win-ffi/comctl32/enum/window/control/imagelist/imagelist_draw'
    require 'win-ffi/comctl32/enum/window/control/imagelist/imagelist_creation_flag'
    require 'win-ffi/comctl32/enum/window/control/imagelist/imagelist_copy_flag'

    require 'win-ffi/comctl32/struct/window/control/imagelist/imagelist_draw_params'
    require 'win-ffi/comctl32/struct/window/control/imagelist/image_info'

    module Comctl32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761512(v=vs.85).aspx
      # int ImageList_Add(_In_     HIMAGELIST himl, _In_     HBITMAP    hbmImage, _In_opt_ HBITMAP    hbmMask)
      attach_function 'ImageList_Add', [:himagelist, :hbitmap, :hbitmap], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761514(v=vs.85).aspx
      # int ImageList_AddMasked(HIMAGELIST himl, HBITMAP    hbmImage, COLORREF   crMask)
      attach_function 'ImageList_AddMasked', [:himagelist, :hbitmap, :colorref], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761514(v=vs.85).aspx
      # int ImageList_AddMasked(HIMAGELIST himl, HBITMAP    hbmImage, COLORREF   crMask)
      attach_function 'ImageList_AddMasked', [:himagelist, :hbitmap, :colorref], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761516(v=vs.85).aspx
      # BOOL ImageList_BeginDrag(
      #   HIMAGELIST himlTrack,
      #   int        iTrack,
      #   int        dxHotspot,
      #   int        dyHotspot)
      attach_function 'ImageList_BeginDrag', [:himagelist, :int, :int, :int], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761520(v=vs.85).aspx
      # BOOL ImageList_Copy(
      #   HIMAGELIST himlDst,
      #   int        iDst,
      #   HIMAGELIST himlSrc,
      #   int        iSrc,
      #   UINT       uFlags)
      attach_function 'ImageList_Copy', [:himagelist, :int, :himagelist, :int, ImageListCopyFlag], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761522(v=vs.85).aspx
      # HIMAGELIST ImageList_Create(int  cx, int  cy, UINT flags, int  cInitial, int  cGrow)
      attach_function 'ImageList_Create', [:int, :int, ImageListCreationFlags, :int, :int], :himagelist

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761524(v=vs.85).aspx
      # BOOL ImageList_Destroy(_In_opt_ HIMAGELIST himl);
      attach_function 'ImageList_Destroy', [:himagelist], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761526(v=vs.85).aspx
      # BOOL ImageList_DragEnter(HWND hwndLock, int x, int y);
      attach_function 'ImageList_DragEnter', [:hwnd, :int, :int], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761528(v=vs.85).aspx
      # BOOL ImageList_DragLeave(HWND hwndLock);
      attach_function 'ImageList_DragLeave', [:hwnd], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761530(v=vs.85).aspx
      # BOOL ImageList_DragMove(int x, int y);
      attach_function 'ImageList_DragMove', [:int, :int], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761532(v=vs.85).aspx
      # BOOL ImageList_DragShowNolock(BOOL fShow);
      attach_function 'ImageList_DragShowNolock', [:bool], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761533(v=vs.85).aspx
      # ImageList_Draw(_In_ HIMAGELIST himl, _In_ int i, _In_ HDC hdcDst, _In_ int x, _In_ int y, _In_ UINT fStyle)
      attach_function 'ImageList_Draw', [:himagelist, :int, :hdc, :int, :int, ImageListDraw], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761536(v=vs.85).aspx
      # BOOL ImageList_DrawEx(_In_ HIMAGELIST himl, _In_ int i, _In_ HDC hdcDst, _In_ int x, _In_ int y, _In_ int dx, _In_ int dy, _In_ COLORREF rgbBk, _In_ COLORREF rgbFg, _In_ UINT fStyle);
      attach_function 'ImageList_DrawEx', [:himagelist, :int, :hdc, :int, :int, :int, :int, :colorref, :colorref, :uint], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761537(v=vs.85).aspx
      # BOOL ImageList_DrawIndirect(_In_ IMAGELISTDRAWPARAMS* pimldp);
      attach_function 'ImageList_DrawIndirect', [IMAGELISTDRAWPARAMS], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761540(v=vs.85).aspx
      # HIMAGELIST ImageList_Duplicate(_In_ HIMAGELIST himl);
      attach_function 'ImageList_Duplicate', [:himagelist], :himagelist

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761541(v=vs.85).aspx
      # void ImageList_EndDrag(void);
      attach_function 'ImageList_EndDrag', [], :void

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761543(v=vs.85).aspx
      # COLORREF ImageList_GetBkColor(_In_ HIMAGELIST himl);
      attach_function 'ImageList_GetBkColor', [:himagelist], :colorref

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761546(v=vs.85).aspx
      # HIMAGELIST ImageList_GetDragImage(_Out_opt_ POINT *ppt, _Out_opt_ POINT *pptHotspot);
      attach_function 'ImageList_GetDragImage', [POINT, POINT], :himagelist

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761548(v=vs.85).aspx
      # HICON ImageList_GetIcon(_In_ HIMAGELIST himl, _In_ int i, _In_ UINT flags);
      attach_function 'ImageList_GetIcon', [:himagelist, :int, ImageListDraw], :hicon

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761550(v=vs.85).aspx
      # BOOL ImageList_GetIconSize(_In_ HIMAGELIST himl, _Out_opt_ int *cx, _Out_opt_ int *cy);
      attach_function 'ImageList_GetIconSize', [:himagelist, :int, :int], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761552(v=vs.85).aspx
      # int ImageList_GetImageCount(_In_ HIMAGELIST himl);
      attach_function 'ImageList_GetImageCount', [:himagelist], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761554(v=vs.85).aspx
      # BOOL ImageList_GetImageInfo(_In_ HIMAGELIST himl, _In_ int i, _Out_ IMAGEINFO *pImageInfo);
      attach_function 'ImageList_GetImageInfo', [:himagelist, :int, IMAGEINFO], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761557(v=vs.85).aspx
      # HIMAGELIST ImageList_LoadImageA(HINSTANCE hi, LPCSTR lpbmp, int cx, int cGrow, COLORREF crMask, UINT uType, UINT uFlags);
      encoded_function 'ImageList_LoadImage', [:hinstance, :string, :int, :int, :colorref, :uint, User32::LoadResourceFlag], :himagelist

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761558(v=vs.85).aspx
      # HIMAGELIST ImageList_Merge(_In_ HIMAGELIST himl1, _In_ int i1, _In_ HIMAGELIST himl2, _In_ int i2, _In_ int dx, _In_ int dy);
      attach_function 'ImageList_Merge', [:himagelist, :int, :himagelist, :int, :int, :int], :himagelist

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761560(v=vs.85).aspx
      # HIMAGELIST ImageList_Read(_In_ struct IStream *pstm);
      attach_function 'ImageList_Read', [:pointer], :himagelist

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb761564(v=vs.85).aspx
      # BOOL ImageList_Remove(_In_ HIMAGELIST himl, _In_ int i);
      attach_function 'ImageList_Remove', [:himagelist, :int], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775213(v=vs.85).aspx
      # BOOL ImageList_Replace(_In_ HIMAGELIST himl, _In_ int i, _In_ HBITMAP hbmImage, _In_opt_ HBITMAP hbmMask);
      attach_function 'ImageList_Replace', [:himagelist, :int, :hbitmap, :hbitmap], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775215(v=vs.85).aspx
      # int ImageList_ReplaceIcon(_In_ HIMAGELIST himl, _In_ int i, _In_ HICON hicon);
      attach_function 'ImageList_ReplaceIcon', [:himagelist, :int, :hicon], :int

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775217(v=vs.85).aspx
      # COLORREF ImageList_SetBkColor(_In_ HIMAGELIST himl, _In_ COLORREF clrBk);
      attach_function 'ImageList_SetBkColor', [:himagelist, :colorref], :colorref

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775221(v=vs.85).aspx
      # BOOL ImageList_SetDragCursorImage(_In_ HIMAGELIST himlDrag, _In_ int iDrag, _In_ int dxHotspot, _In_ int dyHotspot);
      attach_function 'ImageList_SetDragCursorImage', [:himagelist, :int, :int, :int], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775224(v=vs.85).aspx
      # BOOL ImageList_SetIconSize(_In_ HIMAGELIST himl, _In_ int cx, _In_ int cy);
      attach_function 'ImageList_SetIconSize', [:himagelist, :int, :int], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775226(v=vs.85).aspx
      # BOOL ImageList_SetImageCount(_In_ HIMAGELIST himl, _In_ UINT uNewCount);
      attach_function 'ImageList_SetImageCount', [:himagelist, :uint], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775227(v=vs.85).aspx
      # BOOL ImageList_SetOverlayImage(_In_ HIMAGELIST himl, _In_ int iImage, _In_ int iOverlay);
      attach_function 'ImageList_SetOverlayImage', [:himagelist, :int, :int], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb775228(v=vs.85).aspx
      # BOOL ImageList_Write(_In_ HIMAGELIST himl, _In_ struct IStream *pstm);
      attach_function 'ImageList_Write', [:himagelist, :pointer], :bool
    end
  end
end