require 'serverspec'

set :backend, :docker
set :docker_url, 'http://localhost:2375'
set :docker_image, 'ubuntu'

#
require 'specinfra'
require 'specinfra/helper/set'
include Specinfra::Helper::Set

set :backend, :shell_script
set :os, :family => 'redhat'

Specinfra::Runner.install_package('nginx')

#shell_script_backend.rb
yum -y install nginx
DEBIAN_FRONTEND='noninterractive' apt-get -y install nginx

#
require 'specinfra'
require 'specinfra/helper/set'
include Specinfra::Helper::Set

set :backend, :shell_script
set :os, :family => 'ubuntu'

#
require 'specinfra'
require 'specinfra/helper/set'
include Specinfra::Helper::Set

set :backend, :dockerfile
set :os, :family => 'ubuntu'

Specinfra.backend.from('ubuntu')
Specinfra::Runner.install_package('nginx')


describe package('nginx') do
  it { should be_installed }
end

