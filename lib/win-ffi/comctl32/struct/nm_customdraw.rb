require 'win-ffi/comctl32'

require 'win-ffi/general/struct/rect'
require 'win-ffi/comctl32/struct/nm_hdr'

module WinFFI
  module Comctl32
    class NMCUSTOMDRAW < FFIAdditions::Struct
      layout hdr:         NMHDR,
             dwDrawStage: :dword,
             hdc:         :hdc,
             rc:          RECT,
             dwItemSpec:  :dword, # this is control specific, but it's how to specify an item. valid only with CDDS_ITEM bit set,
             uItemState:  :uint,
             lItemlParam: :lparam
    end
  end
end