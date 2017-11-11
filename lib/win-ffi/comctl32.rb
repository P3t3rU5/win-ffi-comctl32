require 'win-ffi/core'
require 'win-ffi/core/lib_base'

require 'win-ffi/comctl32/version'

using WinFFI::StringUtils

module WinFFI
  module Comctl32
    extend WinFFI::LibBase

    include WinFFI

    ffi_lib 'comctl32'

    LOGGER.info "WinFFI Comctl32 v#{WinFFI::Comctl32::VERSION}"

    if ARCHITECTURE == 'i386'
      PROGRESS_CLASS = WinFFI.encoding == 'A' ? 'msctls_progress32' : 'msctls_progress32'.to_w
      STATUS_CLASS_NAME  = WinFFI.encoding == 'A' ? 'msctls_statusbar32' : 'msctls_statusbar32'.to_w
    else
      PROGRESS_CLASS = 'msctls_progress'

    end
    TOOLBAR_CLASS  = WinFFI.encoding == 'A' ? 'ToolbarWindow32' : 'ToolbarWindow32'.to_w

    SB_SIMPLEID = 0x00ff


    #if (NTDDI_VERSION >= NTDDI_WINXP)
    #define COMCTL32_VERSION  6
    #else
    #define COMCTL32_VERSION  5
    #endif
    COMCTL32_VERSION = WINDOWS_VERSION >= :xp ? 6 : 5
  end
end