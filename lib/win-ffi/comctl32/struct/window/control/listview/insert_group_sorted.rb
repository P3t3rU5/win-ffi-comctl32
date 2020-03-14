require_relative 'group'

module WinFFI
  if WINDOWS_VERSION >= :xp
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/nc-commctrl-pfnlvgroupcompare
      # INT LVGroupCompare(_In_ INT  Group1_ID, _In_ INT  Group2_ID, _In_ VOID *pvData)
      LvGroupCompare = callback 'LvGroupCompare', [:int, :int, :pointer], :int

      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-lvinsertgroupsorted
      class LVINSERTGROUPSORTED < FFIAdditions::Struct
        attr_accessor :pfnGroupCompare, :pvData, :lvGroup

        layout pfnGroupCompare: LvGroupCompare,
               pvData:          :pointer,
               lvGroup:         LVGROUP
      end
    end
  end
end
