class Specinfra::Command::Darwin::Base::OsDefaults < Specinfra::Command::Base::OsxDefaults
  class << self
    def check_has_key(name, key, value=nil)
      cmd = "defaults read #{escape(name)} #{escape(key)}"
      cmd += "| grep -w #{escape(value)} if value"
      cmd
    end
  end
end

