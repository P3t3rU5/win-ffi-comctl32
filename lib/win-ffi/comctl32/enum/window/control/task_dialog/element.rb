module WinFFI
  module Comctl32
    TASKDIALOG_ELEMENTS = enum :taskdialog_elements, [
        :CONTENT,
        :EXPANDED_INFORMATION,
        :FOOTER,
        :MAIN_INSTRUCTION
    ]

    define_prefix(:TDE, TASKDIALOG_ELEMENTS)
  end
end