### serverspec1
---

serverspec/
- commands/
  - base.rb
- helper/
  - type.rb
- matcher/
  - be_enabled.rb
  - be_executable.rb
  - have_site_vindings.rb
  - have_virtual_dir.rb
- matcher.rb
- setup.rb
- subject.rb
- type/
  - base.rb
  - cgroup.rb
  - yumrepo.rb
  - zfs.rb
---
specinfra/
- backend/
  - base.rb
  - cmd.rb
  - docker.rb
  - dockerfile.rb
  - exec.rb
  - lxc.rb
  - powershell/
    - command.rb
    - script_helper.rb
    - support/
  - shell_script.rb
  - ssh.rb
  - winrm.rb
- backend.rb
- command/
  - base/
    - cron.rb
    - file.rb
    - yumrepo.rb
    - zfs.rb
  - base.rb
  - linux/
    - base/
      - file.rb
      - interface.rb
      - yumrepo.rb
      - zfs.rb
  - linux.rb
  - module/
    - systemd.rb
    - zfs.rb
- command.rb
- command_factory.rb
- command_result.rb
- configuration.rb
- helper/
  - configuration.rb
  - detect_os/
    - aix.rb
  - detect_os.rb
  - host_inventory.rb
  - lxc.rb
  - os.rb
  - properties.rb
  - set.rb
- helper.rb
- processor.rb
- properties.rb
- runner.rb

---
- type     #have,be,exist
- matcher  #!have,be,exsit

ln -s ./host001.ex.com spec/host002.ex.com

