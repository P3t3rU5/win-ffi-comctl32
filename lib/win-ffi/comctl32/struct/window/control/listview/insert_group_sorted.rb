require_relative 'group'

module WinFFI
  if WINDOWS_VERSION >= :xp
    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nc-commctrl-pfnlvgroupcompare
      # INT LVGroupCompare(_In_ INT  Group1_ID, _In_ INT  Group2_ID, _In_ VOID *pvData)
      LvGroupCompare = callback 'LvGroupCompare', [:int, :int, :pointer], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-taglvinsertgroupsorted
      class LVINSERTGROUPSORTED < FFIAdditions::Struct
        def pfnGroupCompare; end
        def pfnGroupCompare=(v) end
        def pvData; end
        def pvData=(v) end
        def lvGroup; end
        def lvGroup=(v) end

        layout pfnGroupCompare: LvGroupCompare,
               pvData:          :pointer,
               lvGroup:         LVGROUP
      end
    end
  end
end
