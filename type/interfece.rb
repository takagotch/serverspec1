module Serverspec::Type
  class Interface < Base
    def speed
      ret = @runner.get_interface_speed_of(@name)
      val = ret.stdout.strip
      val = val.to_i if val.match(/^\d+$/)
      val
    end

    def has_ipv4_address?(ip_address)
      @runner.check_interface_has_ipv4_address(@name, ip_address)
    end
  end
end
