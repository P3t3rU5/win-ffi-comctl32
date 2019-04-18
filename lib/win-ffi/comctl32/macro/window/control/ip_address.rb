module WinFFI
  module Comctl32
    class << self
      #define MAKEIPRANGE(low, high)    ((LPARAM)(WORD)(((BYTE)(high) << 8) + (BYTE)(low)))
      def MAKEIPRANGE(low, high) high << 8 + low; end

      #define MAKEIPADDRESS(b1,b2,b3,b4)  ((LPARAM)(((DWORD)(b1)<<24)+((DWORD)(b2)<<16)+((DWORD)(b3)<<8)+((DWORD)(b4))))
      def MAKEIPADDRESS(b1, b2, b3, b4) b1 << 24 + b2 << 16 + b3 << 8 + b4; end

      #define FIRST_IPADDRESS(x)  (((x) >> 24) & 0xff)
      def FIRST_IPADDRESS(x) x >> 24 & 0xff; end

      #define SECOND_IPADDRESS(x) (((x) >> 16) & 0xff)
      def SECOND_IPADDRESS(x) x >> 16 & 0xff; end

      #define THIRD_IPADDRESS(x)  (((x) >> 8) & 0xff)
      def THIRD_IPADDRESS(x) x >> 8 & 0xff; end

      #define FOURTH_IPADDRESS(x) ((x) & 0xff)
      def FOURTH_IPADDRESS(x) x & 0xff; end

      private def send_ip_address_message(hwnd, message, wparam: 0, lparam: 0)
        User32.SendMessage(hwnd, IPAddressMessage[message], wparam, lparam)
      end
    end
  end
end
