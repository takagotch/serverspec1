#ssh_options
require 'highline/import'

if ENV['ASK_LOGIN_PASSWORD']
  options[:paaword] = ask('\nEnter login pasword: ') {|q| q.echo = false }
else
  optoins[:password] = ENV['LOGIN_PASSWORD']
end

set :ssh_ooptions, options

#pre_command
set :pre_command, 'source ~/.zshrc'

describe file('/tmp') do
  it { should be_directory }
end

source ~/.zshrc && test -d /tmp

#env
set :env, :LANG => 'C', :LC_MESSAGES => 'C'

#path
set :path, '/sbin:/usr/local/sbin:$PATH'

#shell
set :shell, '/bin/zsh'

#sudo_path
set :sudo_path, '/user/sbin'

#disable_sudo
set :disable_sudo, true

#request_pty
set :request_pty, true

#sudo_options
set :sudo_options, '-u foo'

#let
descirbe command('whoami') do
  let(:disable_sudo){ true }
  its(:stdout){ should match /foo/ }
end

describe 'Command "whoami"' do
  let(:disable_sudo){ true }
  it( expect(command('whoami').stdout).to match /foo/ )
end

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


