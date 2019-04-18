module WinFFI
  module Comctl32
    class LVTILEINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v) end
      def iItem; end
      def iItem=(v) end
      def cColumns; end
      def cColumns=(v) end
      def puColumns; end
      def puColumns=(v) end

      buffer = {
          cbSize:    :uint,
          iItem:     :int,
          cColumns:  :uint,
          puColumns: :pointer
      }

      if WINDOWS_VERSION >= :vista
        def piColFmt; end
        def piColFmt=(v) end

        buffer.merge(piColFmt: :pointer)
      end

      layout buffer
    end
  end
end

