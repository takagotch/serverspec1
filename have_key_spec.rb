describe osx_defaults('com.apple.dock') do
  it { should have_key('autohide') }
end

describe osx_defaults('com.apple.dock') do
  it { should have_key('autohide').with_value(1) }
end

