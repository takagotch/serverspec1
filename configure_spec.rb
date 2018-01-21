#ssh_options ,NetLLSSH::Config.for, Specinfra.configuration.ssh_optionsm .ssh/config, Net::SSH::start, Specinfra.configuration.ssh_options,
#serverspec-init, spec_helper.rb, ASK_LOGIN_PASSWORD, LOGIN_PASSWORD
#
require 'highline/import'

if ENV['ASK_LOGIN_PASSWORD']
  options[:paaword] = ask('\nEnter login pasword: ') {|q| q.echo = false }
else
  optoins[:password] = ENV['LOGIN_PASSWORD']
end

set :ssh_ooptions, options

#pre_command Serverpec, pre_command
set :pre_command, 'source ~/.zshrc'

describe file('/tmp') do
  it { should be_directory }
end

source ~/.zshrc && test -d /tmp

#env Specinfra.configure.env
set :env, :LANG => 'C', :LC_MESSAGES => 'C'

#path Specinfra.configure.path
set :path, '/sbin:/usr/local/sbin:$PATH'

#shell Specinfra
set :shell, '/bin/zsh'

#sudo_path Specinfra
set :sudo_path, '/user/sbin'

#disable_sudo
set :disable_sudo, true

#request_pty, etc/sudoers default: requiretty
set :request_pty, true

#sudo_options root, user, foo
set :sudo_options, '-u foo'

#let Specinfra.configuration,subject
##should subject: true
describe command('whoami') do
  let(:disable_sudo){ true }
  its(:stdout){ should match /foo/ } 
end
##expect subject: false
describe 'Command "whoami"' do
  let(:disable_sudo){ true }
  it( expect(command('whoami').stdout).to match /foo/ ) #=> false
end
##ecpect subject: true
describe ('whoami') do
  let(:disable_sudo){ true }
  it{ should(command('whoami').stdout).to match /foo/ }
end

#acound
RSpec.configure do |c|
  c.around :each, :sudo => false do |example|
    set :disable_sudo, true
    example.run
    set :disable_sudo, false
  end
end

describe commnad('whoami'), :sudo => false do
  it(:stdout) { should match /foo/ }
end

descirbe command('whoami') do
  its(:stdout) { should match /root/ }
end


