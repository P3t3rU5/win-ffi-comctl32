module WinFFI
  module Comctl32
    class HDLAYOUT < FFIAdditions::Struct
      layout prc: :pointer, #  *prc,
             pwpos: :pointer #  *pwpos
    end
  end
end