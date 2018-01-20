describe user('root') do
  it { should exist }
end

describe interface('eth0') do
  its(:speed) { should eq 1000 }
end

#expect
describe 'Network Interface eth0' do
  it 'should have speed 1000' do
    expect(interface('eth0').speed).to eq 1000
  end
end


