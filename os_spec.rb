
set_property { 'key1' => 'value1', 'key2' => 'value2' }

puts property['key1']
puts property['key2']

require 'spec_helper'
describe file('/etc/my.cnf') do
  its(:content) { should match
    /^innodb_buffer_pool_size = #{property['innodb_buffer_pool_size']}/ }
end

puts os # {:family=>"ubuntu", :release=>"14.04", :arch=>"x86_64" }

if os[:family] == 'redhat'
  apache_package = 'httpd'
elsif os[:family] == 'debian' || os[:family] == 'ubuntu'
  apache_package = 'apache2'
end

describe package(apache_package) do
  it { should be_installed }
end


