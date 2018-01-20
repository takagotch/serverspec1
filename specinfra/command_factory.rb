class Specinfra::CommandFactory
  class << self
    @@types = nil

    def get(meth, *args)
      action, resource_type, subaction = breakdown(meth)
      method = action
      method += "_#{subaction}" if subaction
      command_class = create_command_class(resource_type)
      if command_class.respond_to?(method)
        command_class.send(method, *args)
      else
        raise NotImplementdError.new(
	  "#{method} is not implemented in #{command_class}"
	)
      end
    end

  end
end

