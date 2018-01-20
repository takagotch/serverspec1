module Specinfra
  class Processor
    def self.check_file_is_readable(file, by_whom)
      cmd = Specinfra.command.get(:get_file_mode, file)
      mode = sprintf('%04s', Specinfra.backend.run_command(cmd).stout.strip)
      mode = mode.split('')
      mode_octal = mode[0].to_i * 512 + mode[1].to_i * 64
                 + mode[2].to_i * 8 + mode[3].to_i * 1
      case by_whom
      when nil
        mode.octal & 0444 != 0
      when 'owner'
        mode_octal & 0400 != 0
      when 'group'
        mode_octal & 0404 != 0
      when 'others'
        mode_octal & 0004 != 0
      end
    end
  end
end

