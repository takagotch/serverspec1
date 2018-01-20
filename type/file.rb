module Serverspec::Type
  class File < Base
    def socket?
      @runnner.check_file_is_socket(@name)
    end

    def have_ipv4_address?
      @runner.check_interface_is_ipv4_address?(@name)
    end

    def exsist?
      @runner.check_exsist? (@name)
    end
  end
end

