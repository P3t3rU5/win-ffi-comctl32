module WinFFI
  module Comctl32
    buffer = [
        :FIRST,     0xFDF8,
        :LAST,      0xFDDB,

        :SHOW,      0xFDF7,
        :POP,       0xFDF6,
        :LINKCLICK, 0xFDF5
    ]

    buffer += if WinFFI.ascii?
      [:GETDISPINFO, 0xFDF8, :NEEDTEXT, 0xFDF8]
    else
      [:GETDISPINFO, 0xFDEE, :NEEDTEXT, 0xFDEE]
    end

    TooltipNotification = enum :tooltip_notification, buffer
  end
end