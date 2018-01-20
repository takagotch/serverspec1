module Serverspec
  module Helper
    module Type
      types = %w{
        base cgroup command cron default_gateway file group host
	iis_website iis_app_pool interface ipfilter ipnat iptables
	kernel_module linux_kernel_parameter lxc mial_alias package
	php_config port ppa process routing_table selinux servie user
	yumrepo windows_feature windows_hot_fix windows_register_key
	windows_scheduled_task zfs #osx_defaults
      }

      types.each {|type| require "serverspec/type/#{type}"}

      types.each do |type|
        define_method type do |*args|
	  name = args.first
	  eval "Serverspec::Type::#{type.to_camel_case}.new(name)"
	end
      end
    end
  end
end

