# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.define :master do |master|
    master.vm.box = "precise64"
    master.vm.box_url = "http://files.vagrantup.com/precise64.box"
    master.vm.provider :virtualbox do |v|
      v.name = "Orion_Salt_Master"
    end
    master.vm.synced_folder "./master/srv/salt", "/srv/salt"
    master.vm.synced_folder "./master/srv/pillar", "/srv/pillar"
    master.vm.network :private_network, ip: "192.168.33.10"
    master.vm.hostname = "orion-salt-master"

# needed for git access, when you use git as a backend fileserver and install mvn for deploy purposes
    master.vm.provision :shell, :inline =>
     "sudo apt-get -y install python-pip;" \
     "sudo pip install GitPython;" 

    master.vm.provision :salt do |salt|
      salt.install_type = "git"
      salt.install_args = "v2014.1.0"
      salt.install_master = true
      salt.no_minion = true
      salt.master_config = "./master/salt/master"
    end
  end

  config.vm.define :eureka do |eureka|
    eureka.vm.box = "precise64"
    eureka.vm.box_url = "http://files.vagrantup.com/precise64.box"
    eureka.vm.provider :virtualbox do |v|
      v.name = "Eureka_Salt_Minion"
    end
    eureka.vm.network :private_network, ip: "192.168.33.11"
    eureka.vm.hostname = "eureka"

    eureka.vm.provision :salt do |salt|
      salt.install_type = "git"
      salt.install_args = "v2014.1.0"
      salt.minion_config = "./eureka/salt/minion"
      salt.run_highstate = true
    end
  end

  config.vm.define :tenant do |tenant|
    tenant.vm.box = "precise64"
    tenant.vm.box_url = "http://files.vagrantup.com/precise64.box"

    tenant.vm.provider :virtualbox do |v|
      v.name = "Tenant_Salt_Minion"
    end
    tenant.vm.network :private_network, ip: "192.168.33.12"
    tenant.vm.hostname = "tenant"

    tenant.vm.provision :salt do |salt|
      salt.install_type = "git"
      salt.install_args = "v2014.1.0"
      salt.minion_config = "./tenant/salt/minion"
      salt.run_highstate = true
    end
  end

  config.vm.define :admin do |admin|
    admin.vm.box = "precise64"
    admin.vm.box_url = "http://files.vagrantup.com/precise64.box"
    admin.vm.provider :virtualbox do |v|
      v.name = "Admin_Salt_Minion"
    end
    admin.vm.network :private_network, ip: "192.168.33.13"
    admin.vm.hostname = "admin"
     
    admin.vm.provision :salt do |salt|
      salt.install_type = "git"
      salt.install_args = "v2014.1.0"
      salt.minion_config = "./admin/salt/minion"
      salt.run_highstate = true
    end
  end

  config.vm.define :promote do |promote|
    promote.vm.box = "precise64"
    promote.vm.box_url = "http://files.vagrantup.com/precise64.box"
    promote.vm.provider :virtualbox do |v|
      v.name = "Promote_Salt_Minion"
    end
    promote.vm.network :private_network, ip: "192.168.33.14"
    promote.vm.hostname = "promote"
     
    promote.vm.provision :salt do |salt|
      salt.install_type = "git"
      salt.install_args = "v2014.1.0"
      salt.minion_config = "./promote/salt/minion"
      salt.run_highstate = true
    end
  end

#  config.vm.provision "shell",
#    inline: "sudo curl -o salt_install.sh -L http://bootstrap.saltstack.org;" \
#    "sudo sh salt_install.sh -M -N git v2014.1.0;" \
#    "sudo salt-key -a eureka.localhost.com"  
end
