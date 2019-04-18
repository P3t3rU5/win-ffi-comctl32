require 'win-ffi/core/struct/point'
require 'win-ffi/user32/enum/interaction/keyboard/virtual_key_code'

require_relative '../../../../enum/window/control/listview/find_info'

module WinFFI
  module Comctl32
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-lvfindinfoa
    # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/ns-commctrl-lvfindinfow
    class LVFINDINFO < FFIAdditions::Struct
      def flags; end
      def flags=(v) end
      def psz; end
      def psz=(v) end
      def lParam; end
      def lParam=(v) end
      def pt; end
      def pt=(v) end
      def vkDirection; end

      layout flags:       ListviewFindInfo,
             psz:         :string,
             lParam:      :lparam,
             pt:          POINT,
             vkDirection: User32::VirtualKeyCode

      DIRECTIONS = [:LEFT, :RIGHT, :UP, :DOWN, :HOME, :END, :PRIOR, :NEXT].freeze

      def vkDirection=(v)
        return unless DIRECTIONS.include?(v)
        self[:vkDirection] = VirtualKeyCode[v]
      end
    end
  end
end