require_relative '../../../../../win-ffi/comctl32/enum/window/control/date_time_pick/message'

module WinFFI
  module Comctl32
    class << self
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-datetime_getsystemtime
      #define DateTime_GetSystemtime(hdp, pst)    (DWORD)SNDMSG(hdp, DTM_GETSYSTEMTIME, 0, (LPARAM)(pst))
      def DateTime_GetSystemtime(hdp, pst) send_date_time_pick_message(hdp, :GETSYSTEMTIME, lparam: pst) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-datetime_setsystemtime
      #define DateTime_SetSystemtime(hdp, gd, pst)    (BOOL)SNDMSG(hdp, DTM_SETSYSTEMTIME, (WPARAM)(gd), (LPARAM)(pst))
      def DateTime_SetSystemtime(hdp, gd, pst)
        send_date_time_pick_message(hdp, :SETSYSTEMTIME, wparam: gd, lparam: pst)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-datetime_getrange
      #define DateTime_GetRange(hdp, rgst)  (DWORD)SNDMSG(hdp, DTM_GETRANGE, 0, (LPARAM)(rgst))
      def DateTime_GetRange(hdp, rgst) send_date_time_pick_message(hdp, :GETRANGE, lparam: rgst) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-datetime_setrange
      #define DateTime_SetRange(hdp, gd, rgst)  (BOOL)SNDMSG(hdp, DTM_SETRANGE, (WPARAM)(gd), (LPARAM)(rgst))
      def DateTime_SetRange(hdp, gd, rgst) send_date_time_pick_message(hdp, :SETRANGE, wparam: gd, lparam: rgst) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-datetime_setformat
      #define DateTime_SetFormat(hdp, sz)  (BOOL)SNDMSG(hdp, DTM_SETFORMAT, 0, (LPARAM)(sz))
      def DateTime_SetFormat(hdp, sz) send_date_time_pick_message(hdp, :SETFORMAT, lparam: sz) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-datetime_setmonthcalcolor
      #define DateTime_SetMonthCalColor(hdp, iColor, clr) SNDMSG(hdp, DTM_SETMCCOLOR, iColor, clr)
      def DateTime_SetMonthCalColor(hdp, iColor, clr)
        send_date_time_pick_message(hdp, :SETMCCOLOR, wparam: iColor, lapram: clr)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-datetime_getmonthcalcolor
      #define DateTime_GetMonthCalColor(hdp, iColor) SNDMSG(hdp, DTM_GETMCCOLOR, iColor, 0)
      def DateTime_GetMonthCalColor(hdp, iColor) send_date_time_pick_message(hdp, :GETMCCOLOR, wparam: iColor) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-datetime_getmonthcal
      #define DateTime_GetMonthCal(hdp) (HWND)SNDMSG(hdp, DTM_GETMONTHCAL, 0, 0)
      def DateTime_GetMonthCal(hdp) send_date_time_pick_message(hdp, :GETMONTHCAL) end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-datetime_setmonthcalfont
      #define DateTime_SetMonthCalFont(hdp, hfont, fRedraw) SNDMSG(hdp, DTM_SETMCFONT, (WPARAM)(hfont), (LPARAM)(fRedraw))
      def DateTime_SetMonthCalFont(hdp, hfont, fRedraw)
        send_date_time_pick_message(hdp, :SETMCFONT, wparam: hfont, lparam: fRedraw)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-datetime_getmonthcalfont
      #define DateTime_GetMonthCalFont(hdp) SNDMSG(hdp, DTM_GETMCFONT, 0, 0)
      def DateTime_GetMonthCalFont(hdp) send_date_time_pick_message(hdp, :GETMCFONT) end

      if WINDOWS_VERSION >= :vista
        #define DateTime_SetMonthCalStyle(hdp, dwStyle) SNDMSG(hdp, DTM_SETMCSTYLE, 0, (LPARAM)dwStyle)
        def DateTime_SetMonthCalStyle(hdp, dwStyle) send_date_time_pick_message(hdp, :SETMCSTYLE, lparam: dwStyle) end

        #define DateTime_GetMonthCalStyle(hdp) SNDMSG(hdp, DTM_GETMCSTYLE, 0, 0)
        def DateTime_GetMonthCalStyle(hdp) send_date_time_pick_message(hdp, :GETMCSTYLE) end

        #define DateTime_CloseMonthCal(hdp) SNDMSG(hdp, DTM_CLOSEMONTHCAL, 0, 0)
        def DateTime_CloseMonthCal(hdp) send_date_time_pick_message(hdp, :CLOSEMONTHCAL) end

        #define DateTime_GetDateTimePickerInfo(hdp, pdtpi) SNDMSG(hdp, DTM_GETDATETIMEPICKERINFO, 0, (LPARAM)(pdtpi))
        def DateTime_GetDateTimePickerInfo(hdp, pdtpi)
          send_date_time_pick_message(hdp, :GETDATETIMEPICKERINFO, lparam: pdtpi)
        end

        #define DateTime_GetIdealSize(hdp, psize) (BOOL)SNDMSG((hdp), DTM_GETIDEALSIZE, 0, (LPARAM)(psize))
        def DateTime_GetIdealSize(hdp, psize) send_date_time_pick_message(hdp, :GETIDEALSIZE, lparam: psize) end
      end

      private def send_date_time_pick_message(hwnd, message, wparam: 0, lparam: 0)
        User32.SendMessage(hwnd, DateTimePickMessage[message], wparam, lparam)
      end
    end
  end
end
