describe lxc('ct01') do
  it { should exist }
end

#rake spec -j 10 -m
#gem install lxc-extra
require 'serverspec'

set :backend, :lxc
set :lxc, 'ubuntu01'

