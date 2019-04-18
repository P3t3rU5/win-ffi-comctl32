module WinFFI
  module Comctl32
    buffer = [
      :FIRST,              0xFCC1,
      :LAST,               0xFCA5,

      :HEIGHTCHANGE,    0xFCC1,
      :GETOBJECT,       0xFCC0,
      :LAYOUTCHANGED,   0xFCBF,
      :AUTOSIZE,        0xFCBE,
      :BEGINDRAG,       0xFCBD,
      :ENDDRAG,         0xFCBC,
      :DELETINGBAND,    0xFCBB,
      :DELETEDBAND,     0xFCBA,
      :CHILDSIZE,       0xFCB9,
      :CHEVRONPUSHED,   0xFCB7,
      
      :MINIMAX,         0xFCAC,

      #if (_WIN32_IE >= 0x0600)
      :SPLITTERDRAG,    0xFCB6
    ]

    buffer += [:AUOTBREAK, 0xFCAB] if WINDOWS_VERSION >= :xp

    RebarNotification = enum :rebar_notification, buffer

    define_prefix(:RBN, RebarNotification)
  end
end
