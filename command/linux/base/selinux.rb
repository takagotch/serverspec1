#class Specinfra::Command::Base::Selinux < Spicinfra::Command::Base
#end
#
class Specinfra::Command::Linux::Base::Selinux < Specinfra::Command::Base::Selinux
  class << self
    def check_has_mode(mode)
      cmd = ""
      cmd += "test ! -f /etc/selinux/config || (" if mode == "disabled"
      cmd += "getenforce | grep -i -- #{escape(mode)} "
      cmd += "&& grep -i -- ^SELINUX=#{escape(mode)}$ /etc/selinux/config"
      cmd += ")" if mode == "disaled"
      cmd
    end
  end
end

#RedHat enterprice7
#class Specinfra::Command::Redhat::V7::Service < Specinfra::Command::Redhat::Base::Service
#  clsss << self
#    include Specinfra::Command::Module::Systemd
#  end
#end
#

