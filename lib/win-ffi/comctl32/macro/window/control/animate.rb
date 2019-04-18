module WinFFI
  module Comctl32
    class << self
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-animate_create
      #define Animate_Create(hwndP, id, dwStyle, hInstance)   \
      # CreateWindow(ANIMATE_CLASS, NULL,           \
      #             dwStyle, 0, 0, 0, 0, hwndP, (HMENU)(id), hInstance, NULL)
      def Animate_Create(hwndP, id, dwStyle, hInstance)
        User32.CreateWindow(ANIMATE_CLASS, nil, dwStyle, 0,0,0,0, hwndP, id, hInstance, nil)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-animate_open
      #define Animate_Open(hwnd, szName)          (BOOL)SNDMSG(hwnd, ACM_OPEN, 0, (LPARAM)(LPTSTR)(szName))
      def Animate_Open(hwnd, szName)
        send_animation_message(hwnd, :OPEN, lparam: szName)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-animate_openex
      #define Animate_OpenEx(hwnd, hInst, szName) (BOOL)SNDMSG(hwnd, ACM_OPEN, (WPARAM)(hInst), (LPARAM)(LPTSTR)(szName))
      def Animate_OpenEx(hwnd, hInst, szName)
        send_animation_message(hwnd, :OPEN, wparam: hInst, lparam: szName)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-animate_play
      #define Animate_Play(hwnd, from, to, rep)   (BOOL)SNDMSG(hwnd, ACM_PLAY, (WPARAM)(rep), (LPARAM)MAKELONG(from, to))
      def Animate_Play(hwnd, from, to, rep)
        send_animation_message(hwnd, :PLAY, wparam: rep, lparam: MAKELONG(from, to))
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-animate_stop
      #define Animate_Stop(hwnd)                  (BOOL)SNDMSG(hwnd, ACM_STOP, 0, 0)
      def Animate_Stop(hwnd)
        send_animation_message(hwnd, :STOP)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-animate_isplaying
      #define Animate_IsPlaying(hwnd)             (BOOL)SNDMSG(hwnd, ACM_ISPLAYING, 0, 0)
      def Animate_IsPlaying(hwnd)
        send_animation_message(hwnd, :ISPLAYING)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-animate_close
      #define Animate_Close(hwnd)                 Animate_Open(hwnd, NULL)
      def Animate_Close(hwnd)
        Animate_Open(hwnd, nil)
      end

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-animate_seek
      #define Animate_Seek(hwnd, frame)           Animate_Play(hwnd, frame, frame, 1)
      def Animate_Seek(hwnd, frame)
        Animate_Play(hwnd, frame, frame, 1)
      end

      private def send_animation_message(hwnd, message, wparam: 0, lparam: 0)
        User32.SendMessage(hwnd, AnimateControlMessage[message], lparam, wparam)
      end
    end
  end
end