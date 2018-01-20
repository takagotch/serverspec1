describe file('/var/run/unicorn.sock') do
  it { should be_socket }
end

describe interface('enth0') do
  it { should have_ipv4_address('192,168.10.10') }
end

describe user('root') do
  it { should exist }
end

