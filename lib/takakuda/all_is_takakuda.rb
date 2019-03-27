module Takakuda
  module AllIsTakakuda
    def to_takk
      TAKAKUDA
    end
  end
end

Object.send(:prepend, Takakuda::AllIsTakakuda)
