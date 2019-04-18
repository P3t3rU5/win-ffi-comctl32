module WinFFI
  module Comctl32
    INFOTIPSIZE = 1024
    if WINDOWS_VERSION >= :vista
      L_MAX_URL_LENGTH = (2048 + 32 + "://".length)
      CBEMAXSTRLEN = 260
      #define TRBN_FIRST              (0U-1501U)       // trackbar
      #define TRBN_LAST               (0U-1519U)

      # TRBN_THUMBPOSCHANGING = TRBN_FIRST-1
    end
  end
end