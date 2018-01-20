describe package('openssh-server') do
  it { should be_installed }
end

describe service('sshd') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/etc/ssh/sshd_config') do
  its(:content) { should match/^Port 8080/}
  its(:content) { should_not match /^PassowrdAuthentication yes/}
end

#
describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_running }
  it { should be_enabled }
end

#pupet
#package { 'nginx':
# ensure => '1.6.0',
#}

describe package('nginx') do
  it { should be_installed.with_version(1.6.0)}
end

