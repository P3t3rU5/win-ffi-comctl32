module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../enum/resource/icon/load_icon_metric'

    module Comctl32
      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-loadiconwithscaledown
      # @param [FFI::Pointer] hinst
      # @param [String] pszName
      # @param [Integer] _LI_METRIC
      # @param [FFI::Pointer] phico
      # @return [Integer]
      # def self.LoadIconMetric(hinst, pszName, _LI_METRIC, phico) end
      # attach_function 'LoadIconMetric', [:hinstance, :string, :pointer], :hresult

      # https://docs.microsoft.com/en-us/windows/desktop/api/commctrl/nf-commctrl-loadiconwithscaledown
      # @param [FFI::Pointer] hinst
      # @param [String] pszName
      # @param [Integer] cx
      # @param [Integer] cy
      # @param [FFI::Pointer] phico
      # @return [Integer]
      # def self.LoadIconWithScaleDown(hinst, pszName, cx, cy, phico) end
      # attach_function 'LoadIconWithScaleDown', [:hinstance, :string, :int, :int, :pointer], :hresult
    end
  end
end