module WinFFI
  if WINDOWS_VERSION >= :vista
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taglvitema
      ListViewGroupIdentifier = enum :listview_group_identifier, [
          :GROUPIDCALLBACK, (-1),
          :GROUPIDNONE,     (-2)
      ]

      define_prefix(:I, ListViewGroupIdentifier)
    end
  end
end