require 'win-ffi/core'
require 'win-ffi/core/lib_base'
require 'win-ffi/user32'

require_relative 'comctl32/version'

using WinFFI::StringUtils

module WinFFI
  module Comctl32
    extend WinFFI::LibBase

    include WinFFI

    ffi_lib 'comctl32'

    LOGGER.info "WinFFI Comctl32 v#{WinFFI::Comctl32::VERSION}"

    if WinFFI.x86?
      if WinFFI.ascii?
        ANIMATE_CLASS      = 'SysAnimate32'
        DATETIMEPICK_CLASS = 'SysDateTimePick32'
        HOTKEY_CLASS       = 'msctls_hotkey32'
        MONTH_CLASS        = 'SysMonthCal32'
        PROGRESS_CLASS     = 'msctls_progress32'
        REBARCLASSNAME     = 'ReBarWindow32'
        STATUSCLASSNAME    = 'msctls_statusbar32'
        TOOLBARCLASSNAME   = 'ToolbarWindow32'
        TOOLBAR_CLASS      = 'ToolbarWindow32'
        TOOLTIPS_CLASS     = 'tooltips_class32'
        TRACKBAR_CLASS     = 'msctls_trackbar32'
        UPDOWN_CLASS       = 'msctls_updown32'
        WC_BUTTON          = 'Button'
        WC_COMBOBOX        = 'ComboBox'
        WC_COMBOBOXEX      = 'ComboBoxEx32'
        WC_EDIT            = 'Edit'
        WC_HEADER          = 'SysHeader32'
        WC_IPADDRESS       = 'SysIPAddress32'
        WC_LISTBOX         = 'ListBox'
        WC_LISTVIEW        = 'SysListView32'
        WC_NATIVEFONTCTL   = 'NativeFontCtl'
        WC_PAGESCROLLER    = 'SysPager'
        WC_TABCONTROL      = 'SysTabControl32'
        WC_TREEVIEW        = 'SysTreeView32'
        WC_SCROLLBAR       = 'ScrollBar'
        WC_STATIC          = 'Static'
      else
        ANIMATE_CLASS      = 'SysAnimate32'.to_w
        DATETIMEPICK_CLASS = 'SysDateTimePick32'.to_w
        MONTH_CLASS        = 'SysMonthCal32'.to_w
        PROGRESS_CLASS     = 'msctls_progress32'.to_w
        HOTKEY_CLASS       = 'msctls_hotkey32'.to_w
        REBARCLASSNAME     = 'ReBarWindow32'.to_w
        STATUSCLASSNAME    = 'msctls_statusbar32'.to_w
        TOOLBARCLASSNAME   = 'ToolbarWindow32'.to_w
        TOOLBAR_CLASS      = 'ToolbarWindow32'.to_w
        TOOLTIPS_CLASS     = 'tooltips_class32'.to_w
        TRACKBAR_CLASS     = 'msctls_trackbar32'.to_w
        UPDOWN_CLASS       = 'msctls_updown32'.to_w
        WC_BUTTON          = 'Button'.to_w
        WC_COMBOBOX        = 'ComboBox'.to_w
        WC_COMBOBOXEX      = 'ComboBoxEx32'.to_w
        WC_EDIT            = 'Edit'.to_w
        WC_HEADER          = 'SysHeader32'.to_w
        WC_IPADDRESS       = 'SysIPAddress32'.to_w
        WC_LISTBOX         = 'ListBox'.to_w
        WC_LISTVIEW        = 'SysListView32'.to_w
        WC_NATIVEFONTCTL   = 'NativeFontCtl'.to_w
        WC_PAGESCROLLER    = 'SysPager'.to_w
        WC_TABCONTROL      = 'SysTabControl32'.to_w
        WC_TREEVIEW        = 'SysTreeView32'.to_w
        WC_SCROLLBAR       = 'ScrollBar'.to_w
        WC_STATIC          = 'Static'.to_w
      end
    else
      PROGRESS_CLASS   = 'msctls_progress'
      STATUSCLASSNAME  = 'msctls_statusbar'
      TRACKBAR_CLASS   = 'msctls_trackbar'
      UPDOWN_CLASS     = 'msctls_updown'
      HOTKEY_CLASS     = 'msctls_hotkey'
      TOOLTIPS_CLASS   = 'tooltips_class'
      TOOLBARCLASSNAME = 'ToolbarWindow'
      REBARCLASSNAME   = 'ReBarWindow'
      WC_BUTTON        = 'Button'
      WC_COMBOBOX        = 'ComboBox'
      WC_COMBOBOXEX    = 'ComboBoxEx32'
      WC_EDIT          = 'Edit'
      WC_HEADER        = 'SysHeader'
      WC_LISTBOX       = 'ListBox'
      WC_LISTVIEW      = 'SysListView'
      WC_TREEVIEW      = 'SysTreeView'
      WC_TABCONTROL    = 'SysTabControl'
      WC_SCROLLBAR     = 'ScrollBar'.to_w
      WC_STATIC        = 'Static'
    end

    if WINDOWS_VERSION >= :xp
      WC_LINK = "SysLink".to_w
    end

    SB_SIMPLEID = 0x00ff

    #define DRAGLISTMSGSTRING       TEXT("commctrl_DragListMsg")
    DRAGLISTMSGSTRING = "commctrl_DragListMsg"

    COMCTL32_VERSION = WINDOWS_VERSION >= :xp ? 6 : 5
  end
end
