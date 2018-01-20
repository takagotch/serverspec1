class Specinfra::Command::Coreos::Base::Service < Specinfra::Command::Base::Service
  class << self
    include Specinfra::Command::Module::Systemd
  end
end

