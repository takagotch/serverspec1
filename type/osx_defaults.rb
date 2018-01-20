module Serverspec::Type
  class OsxDefaults < Base
    def has_key?(key, value=nil)
      @runner.check_os_defaults_has_key(@name, key, value)
    end
  end
end

