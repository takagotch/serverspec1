module ServerSpec::Type
  class lxc < Base
    def exsist?
      @runner.check_lxc_container_exists(@name)
    end
  end
end

