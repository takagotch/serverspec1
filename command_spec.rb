describe command() do
  its(:stdout){ should match /root/ }
end

ret = Specinfra::Runner.get_interface_speed_of(i)

ret = Specinfra::Runner.run_command("ip route | grep default | awk '{ print $3 }' ")

i = Specinfra::Runner.run_command("ifconfig | head -1 | awk '{ print $1 }' | sed -e 's/://'").stdout.strip

describe insterface(i) do
  its(:speed) { should eq 1000 }
end



