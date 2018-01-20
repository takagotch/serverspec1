module Serverspec::Type
  class Base
    def initialize(name=nil)
      @name = name
      @runner = Specinfra::Runner
    end

  end
end

