require 'win-ffi/comctl32'

module WinFFI
  module Comctl32
    DPAMergeMessage = enum :dpa_merge_message, [
        :MERGE,  1,
        :DELETE, 2,
        :INSERT, 3,
    ]

    define_prefix(:DPAMM, DPAMergeMessage)
  end
end