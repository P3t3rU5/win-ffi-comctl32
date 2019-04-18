module WinFFI
  module Comctl32
    buffer = [
        :PLAY,      0x0465,
        :STOP,      0x0466,
        :ISPLAYING, 0x0468,
    ]
    buffer += WinFFI.ascii? ? [:OPENA, 0x0464] : [:OPENW, 0x0467,]

    AnimateControlMessage = enum :animate_control_message, buffer

    define_prefix(:ACM, AnimateControlMessage)
  end
end