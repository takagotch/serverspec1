describe user('apache') do
  it { should belong_to_group 'apache' }
end

