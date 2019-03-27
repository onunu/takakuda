module Takakuda
  module AllIsTakakuda
    def to_takk
      TAKAKUDA
    end

    def takk!
      self.replace(TAKAKUDA)
    end
  end
end

Object.send(:prepend, Takakuda::AllIsTakakuda)
