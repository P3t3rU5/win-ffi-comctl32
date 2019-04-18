module WinFFI
  if WINDOWS_VERSION >= :xp
    module Comctl32
      #if (NTDDI_VERSION >= NTDDI_WINXP)
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760482(v=vs.85).aspx
      ToolbarMetricFlag = enum :toolbar_metric_flag, [
          :PAD,           0x00000001,
          :BARPAD,        0x00000002,
          :BUTTONSPACING, 0x00000004
      ]

      define_prefix(:TBMF, ToolbarMetricFlag)
    end
  end
end