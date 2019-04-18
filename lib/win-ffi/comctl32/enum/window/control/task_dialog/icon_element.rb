module WinFFI
  module Comctl32
    TASKDIALOG_ICON_ELEMENTS = enum :taskdialog_icon_elements, [:ICON_MAIN, :ICON_FOOTER]

    define_prefix(:TDIE, TASKDIALOG_ICON_ELEMENTS)
  end
end