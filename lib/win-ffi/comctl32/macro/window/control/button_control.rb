module WinFFI
  if WINDOWS_VERSION >= :xp
    module Comctl32
      class << self
        #define Button_GetIdealSize(hwnd, psize) (BOOL)SNDMSG((hwnd), BCM_GETIDEALSIZE, 0, (LPARAM)(psize))
        def Button_GetIdealSize(hwnd, psize) send_button_control_message(hwnd, :GETIDEALSIZE, lparam: psize) end

        #define Button_SetImageList(hwnd, pbuttonImagelist) (BOOL)SNDMSG((hwnd), BCM_SETIMAGELIST, 0, (LPARAM)(pbuttonImagelist))
        def Button_SetImageList(hwnd, pbuttonImagelist)
          send_button_control_message(hwnd, :SETIMAGELIST, lparam: pbuttonImagelist)
        end

        #define Button_GetImageList(hwnd, pbuttonImagelist) (BOOL)SNDMSG((hwnd), BCM_GETIMAGELIST, 0, (LPARAM)(pbuttonImagelist))
        def Button_GetImageList(hwnd, pbuttonImagelist)
          send_button_control_message(hwnd, :GETIMAGELIST, lparam: pbuttonImagelist)
        end

        #define Button_SetTextMargin(hwnd, pmargin) (BOOL)SNDMSG((hwnd), BCM_SETTEXTMARGIN, 0, (LPARAM)(pmargin))
        def Button_SetTextMargin(hwnd, pmargin) send_button_control_message(hwnd, :SETTEXTMARGIN, lparam: pmargin) end

        #define Button_GetTextMargin(hwnd, pmargin) (BOOL)SNDMSG((hwnd), BCM_GETTEXTMARGIN, 0, (LPARAM)(pmargin))
        def Button_GetTextMargin(hwnd, pmargin) send_button_control_message(hwnd, :GETTEXTMARGIN, lparam: pmargin) end

        if WINDOWS_VERSION >= :vista
          #define Button_SetDropDownState(hwnd, fDropDown) (BOOL)SNDMSG((hwnd), BCM_SETDROPDOWNSTATE, (WPARAM)(fDropDown), 0)
          def Button_SetDropDownState(hwnd, fDropDown)
            send_button_control_message(hwnd, :SETDROPDOWNSTATE, wparam: fDropDown)
          end

          #define Button_SetSplitInfo(hwnd, pInfo) (BOOL)SNDMSG((hwnd), BCM_SETSPLITINFO, 0, (LPARAM)(pInfo))
          def Button_SetSplitInfo(hwnd, pInfo) send_button_control_message(hwnd, :SETSPLITINFO, lparam: pInfo) end

          #define Button_GetSplitInfo(hwnd, pInfo) (BOOL)SNDMSG((hwnd), BCM_GETSPLITINFO, 0, (LPARAM)(pInfo))
          def Button_GetSplitInfo(hwnd, pInfo) send_button_control_message(hwnd, :GETSPLITINFO, lparam: pInfo) end

          #define Button_SetNote(hwnd, psz) (BOOL)SNDMSG((hwnd), BCM_SETNOTE, 0, (LPARAM)(psz))
          def Button_SetNote(hwnd, psz) send_button_control_message(hwnd, :SETNOTE, lparam: psz) end

          #define Button_GetNote(hwnd, psz, pcc) (BOOL)SNDMSG((hwnd), BCM_GETNOTE, (WPARAM)pcc, (LPARAM)psz)
          def Button_GetNote(hwnd, psz, pcc) send_button_control_message(hwnd, :GETNOTE, wparam: pcc, lparam: psz) end

          #define Button_GetNoteLength(hwnd) (LRESULT)SNDMSG((hwnd), BCM_GETNOTELENGTH, 0, 0)
          def Button_GetNoteLength(hwnd) send_button_control_message(hwnd, :GETNOTELENGTH) end

          #define Button_SetElevationRequiredState(hwnd, fRequired) (LRESULT)SNDMSG((hwnd), BCM_SETSHIELD, 0, (LPARAM)fRequired)
          def Button_SetElevationRequiredState(hwnd, fRequired)
            send_button_control_message(hwnd, :SETSHIELD, lparam: fRequired)
          end
        end

        private def send_button_control_message(hwnd, message, wparam: 0, lparam: 0)
          User32.SendMessage(hwnd, ButtonControlMessage[message], wparam, lparam)
        end
      end
    end
  end
end
