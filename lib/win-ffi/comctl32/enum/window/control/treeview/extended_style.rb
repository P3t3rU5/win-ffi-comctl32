module WinFFI
  if WINDOWS_VERSION >= :xp
    module Comctl32
      buffer = [:NOSINGLECOLLAPSE, 0x0001]

      buffer += [
          :MULTISELECT,         0x0002,
          :DOUBLEBUFFER,        0x0004,
          :NOINDENTSTATE,       0x0008,
          :RICHTOOLTIP,         0x0010,
          :AUTOHSCROLL,         0x0020,
          :FADEINOUTEXPANDOS,   0x0040,
          :PARTIALCHECKBOXES,   0x0080,
          :EXCLUSIONCHECKBOXES, 0x0100,
          :DIMMEDCHECKBOXES,    0x0200,
          :DRAWIMAGEASYNC,      0x0400
      ] if WINDOWS_VERSION >= :vista

      TreeviewExtendedStyle = enum :treeview_extended_style, buffer

      define_prefix(:TVS_EX, TreeviewExtendedStyle)
    end
  end
end