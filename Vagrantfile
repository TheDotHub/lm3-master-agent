# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

require 'yaml'
@servers = YAML.load_file('.servers.yml') 
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  @servers.each do |servers|
    config.vm.define servers["name"] do |srv|
      srv.vm.box          = servers["box"]
      srv.vm.boot_timeout = 1600
      srv.vm.hostname     = servers["hostname"]
      srv.vm.provider :virtualbox do |v|
        v.gui    = true
        v.name   = servers["name"]
        v.memory = servers["ram"]
        v.cpus   = 2
      end

      srv.vm.network "forwarded_port", guest: 80, host: 8090, auto_correct: true # winrm
      srv.vm.provision :shell, path: 'scripts/bootstrap_master.sh'
    end
  end
end
