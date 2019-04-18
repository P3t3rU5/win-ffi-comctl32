module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-loadiconmetric
      _LI_METRIC = enum :_li_metric, [:SMALL, :LARGE]

      define_prefix(:LIM, _LI_METRIC)
    end
  end
end