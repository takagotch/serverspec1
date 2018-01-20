class Spefinfra::Helper::DetectOs::CoreOs < Specinfra::Helper::DetectOs
  def self.detect
    if run_command('grep CoreOs /etc/lsb-release').success?
      release = run_command(
        'grep DISTRIB_RELEASE /etc/lab-release | cut -d= -f2'
      ).stdout.strip
      { :family => 'coreos', :release => release }
    end
  end
end

