describe package('serverspec') do
  it { should be_installed.by('gem').with_version('2.0.0') }
end

