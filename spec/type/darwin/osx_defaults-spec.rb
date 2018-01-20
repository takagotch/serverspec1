require 'spec_helper'

set :os, :family => 'darwin'

describe osx_defaults('com.apple.dock') do
  it { should have_key('authohide') }
end

describe osx_defaults('com.apple.com') do
  it { should have_key('authohide').with_value(1) }
end


