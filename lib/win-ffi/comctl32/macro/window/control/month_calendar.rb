require_relative '../../../../../win-ffi/comctl32/enum/window/control/month_calendar/message'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/Controls/bumper-month-calendar-control-reference-macros
    class << self
      #define MonthCal_GetCurSel(hmc, pst) (BOOL)SNDMSG(hmc, MCM_GETCURSEL, 0, (LPARAM)(pst))
      def MonthCal_GetCurSel(hmc, pst) send_month_calendar_message(hmc, :GETCURSEL, lparam: pst) end

      #define MonthCal_SetCurSel(hmc, pst) (BOOL)SNDMSG(hmc, MCM_SETCURSEL, 0, (LPARAM)(pst))
      def MonthCal_SetCurSel(hmc, pst) send_month_calendar_message(hmc, :SETCURSEL, lparam: pst) end

      #define MonthCal_GetMaxSelCount(hmc) (DWORD)SNDMSG(hmc, MCM_GETMAXSELCOUNT, 0, 0L)
      def MonthCal_GetMaxSelCount(hmc) send_month_calendar_message(hmc, :GETMAXSELCOUNT) end

      #define MonthCal_SetMaxSelCount(hmc, n) (BOOL)SNDMSG(hmc, MCM_SETMAXSELCOUNT, (WPARAM)(n), 0L)
      def MonthCal_SetMaxSelCount(hmc, n) send_month_calendar_message(hmc, :SETMAXSELCOUNT, wparam: n) end

      #define MonthCal_GetSelRange(hmc, rgst) SNDMSG(hmc, MCM_GETSELRANGE, 0, (LPARAM)(rgst))
      def MonthCal_GetSelRange(hmc, rgst) send_month_calendar_message(hmc, :GETSELRANGE, lparam: rgst) end

      #define MonthCal_SetSelRange(hmc, rgst) SNDMSG(hmc, MCM_SETSELRANGE, 0, (LPARAM)(rgst))
      def MonthCal_SetSelRange(hmc, rgst) send_month_calendar_message(hmc, :SETSELRANGE, lparam: rgst) end

      #define MonthCal_GetMonthRange(hmc, gmr, rgst) (DWORD)SNDMSG(hmc, MCM_GETMONTHRANGE, (WPARAM)(gmr), (LPARAM)(rgst))
      def MonthCal_GetMonthRange(hmc, gmr, rgst)
        send_month_calendar_message(hmc, :GETMONTHRANGE, wparam: GetMonthRange[gmr] || gmr, lparam: rgst)
      end

      #define MonthCal_SetDayState(hmc, cbds, rgds) SNDMSG(hmc, MCM_SETDAYSTATE, (WPARAM)(cbds), (LPARAM)(rgds))
      def MonthCal_SetDayState(hmc, cbds, rgds)
        send_month_calendar_message(hmc, :SETDAYSTATE, wparam: cbds, lparam: rgds)
      end

      #define MonthCal_GetMinReqRect(hmc, prc) SNDMSG(hmc, MCM_GETMINREQRECT, 0, (LPARAM)(prc))
      def MonthCal_GetMinReqRect(hmc, prc) send_month_calendar_message(hmc, :GETMINREQRECT, lparam: prc) end

      #define MonthCal_SetColor(hmc, iColor, clr) SNDMSG(hmc, MCM_SETCOLOR, iColor, clr)
      def MonthCal_SetColor(hmc, iColor, clr)
        send_month_calendar_message(hmc, :SETCOLOR, wparam: MonthCalendarSetColor[iColor] || iColor, lparam: clr)
      end

      #define MonthCal_GetColor(hmc, iColor) SNDMSG(hmc, MCM_GETCOLOR, iColor, 0)
      def MonthCal_GetColor(hmc, iColor) send_month_calendar_message(hmc, :GETCOLOR, wparam: MonthCalendarSetColor[iColor] || iColor) end

      #define MonthCal_SetToday(hmc, pst) SNDMSG(hmc, MCM_SETTODAY, 0, (LPARAM)(pst))
      def MonthCal_SetToday(hmc, pst) send_month_calendar_message(hmc, :SETTODAY, lparam: pst) end

      #define MonthCal_GetToday(hmc, pst) (BOOL)SNDMSG(hmc, MCM_GETTODAY, 0, (LPARAM)(pst))
      def MonthCal_GetToday(hmc, pst) send_month_calendar_message(hmc, :GETTODAY, lparam: pst) end

      #define MonthCal_HitTest(hmc, pinfo) SNDMSG(hmc, MCM_HITTEST, 0, (LPARAM)(PMCHITTESTINFO)(pinfo))
      def MonthCal_HitTest(hmc, pinfo) send_month_calendar_message(hmc, :HITTEST, lparam: pinfo) end

      #define MonthCal_SetFirstDayOfWeek(hmc, iDay) SNDMSG(hmc, MCM_SETFIRSTDAYOFWEEK, 0, iDay)
      def MonthCal_SetFirstDayOfWeek(hmc, iDay) send_month_calendar_message(hmc, :SETFIRSTDAYOFWEEK, lparam: iDay) end

      #define MonthCal_GetFirstDayOfWeek(hmc) (DWORD)SNDMSG(hmc, MCM_GETFIRSTDAYOFWEEK, 0, 0)
      def MonthCal_GetFirstDayOfWeek(hmc) send_month_calendar_message(hmc, :GETFIRSTDAYOFWEEK) end

      #define MonthCal_GetRange(hmc, rgst) (DWORD)SNDMSG(hmc, MCM_GETRANGE, 0, (LPARAM)(rgst))
      def MonthCal_GetRange(hmc, rgst) send_month_calendar_message(hmc, :GETRANGE, lparam: rgst) end

      #define MonthCal_SetRange(hmc, gd, rgst) (BOOL)SNDMSG(hmc, MCM_SETRANGE, (WPARAM)(gd), (LPARAM)(rgst))
      def MonthCal_SetRange(hmc, gd, rgst) send_month_calendar_message(hmc, :SETRANGE, wparam: gd, lparam: rgst) end

      #define MonthCal_GetMonthDelta(hmc) (int)SNDMSG(hmc, MCM_GETMONTHDELTA, 0, 0)
      def MonthCal_GetMonthDelta(hmc) send_month_calendar_message(hmc, :GETMONTHDELTA) end

      #define MonthCal_SetMonthDelta(hmc, n) (int)SNDMSG(hmc, MCM_SETMONTHDELTA, n, 0)
      def MonthCal_SetMonthDelta(hmc, n) send_month_calendar_message(hmc, :SETMONTHDELTA, wparam: n) end

      #define MonthCal_GetMaxTodayWidth(hmc) (DWORD)SNDMSG(hmc, MCM_GETMAXTODAYWIDTH, 0, 0)
      def MonthCal_GetMaxTodayWidth(hmc) send_month_calendar_message(hmc, :GETMAXTODAYWIDTH) end

      #define MonthCal_SetUnicodeFormat(hwnd, fUnicode) (BOOL)SNDMSG((hwnd), MCM_SETUNICODEFORMAT, (WPARAM)(fUnicode), 0)
      def MonthCal_SetUnicodeFormat(hwnd, fUnicode)
        send_month_calendar_message(hwnd, :SETUNICODEFORMAT, wparam: fUnicode)
      end

      #define MonthCal_GetUnicodeFormat(hwnd) (BOOL)SNDMSG((hwnd), MCM_GETUNICODEFORMAT, 0, 0)
      def MonthCal_GetUnicodeFormat(hwnd) send_month_calendar_message(hwnd, :GETUNICODEFORMAT) end

      if WINDOWS_VERSION >= :vista
        #define MonthCal_GetCurrentView(hmc) (DWORD)SNDMSG(hmc, MCM_GETCURRENTVIEW, 0, 0)
        def MonthCal_GetCurrentView(hmc) send_month_calendar_message(hmc, :GETCURRENTVIEW) end

        #define MonthCal_GetCalendarCount(hmc) (DWORD)SNDMSG(hmc, MCM_GETCALENDARCOUNT, 0, 0)
        def MonthCal_GetCalendarCount(hmc) send_month_calendar_message(hmc, :GETCALENDARCOUNT) end

        #define MonthCal_GetCalendarGridInfo(hmc, pmcGridInfo) (BOOL)SNDMSG(hmc, MCM_GETCALENDARGRIDINFO, 0, (LPARAM)(PMCGRIDINFO)(pmcGridInfo))
        def MonthCal_GetCalendarGridInfo(hmc, pmcGridInfo)
          send_month_calendar_message(hmc, :GETCALENDARGRIDINFO, lparam: pmcGridInfo)
        end

        #define MonthCal_GetCALID(hmc) (CALID)SNDMSG(hmc, MCM_GETCALID, 0, 0)
        def MonthCal_GetCALID(hmc) send_month_calendar_message(hmc, :GETCALID) end

        #define MonthCal_SetCALID(hmc, calid) SNDMSG(hmc, MCM_SETCALID, (WPARAM)(calid), 0)
        def MonthCal_SetCALID(hmc, calid) send_month_calendar_message(hmc, :SETCALID, wparam: calid) end

        #define MonthCal_SizeRectToMin(hmc, prc) SNDMSG(hmc, MCM_SIZERECTTOMIN, 0, (LPARAM)(prc))
        def MonthCal_SizeRectToMin(hmc, prc) send_month_calendar_message(hmc, :SIZERECTTOMIN, lparam: prc) end

        #define MonthCal_SetCalendarBorder(hmc, fset, xyborder) SNDMSG(hmc, MCM_SETCALENDARBORDER, (WPARAM)(fset), (LPARAM)(xyborder))
        def MonthCal_SetCalendarBorder(hmc, fset, xyborder)
          send_month_calendar_message(hmc, :SETCALENDARBORDER, wparam: fset, lparam: xyborder)
        end

        #define MonthCal_GetCalendarBorder(hmc) (int)SNDMSG(hmc, MCM_GETCALENDARBORDER, 0, 0)
        def MonthCal_GetCalendarBorder(hmc) send_month_calendar_message(hmc, :GETCALENDARBORDER) end

        #define MonthCal_SetCurrentView(hmc, dwNewView) (BOOL)SNDMSG(hmc, MCM_SETCURRENTVIEW, 0, (LPARAM)(dwNewView))
        def MonthCal_SetCurrentView(hmc, dwNewView)
          send_month_calendar_message(hmc, :SETCURRENTVIEW, lparam: dwNewView)
        end
      end

      private def send_month_calendar_message(hwnd, message, wparam: 0, lparam: 0)
        User32.SendMessage(hwnd, MonthCalendarMessage[message], wparam, lparam)
      end
    end
  end
end
