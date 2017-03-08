Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.2"
  config.vm.provider "virtualbox" do |v|
    v.cpus = 2
    v.memory = 1024
    v.customize ["modifyvm", :id, "--ioapic", "on"] # Enable I/O APIC to use multiple cores
    v.customize ["modifyvm", :id, "--ostype", "RedHat_64"] # Trick to run 64-bit guest on 32-bit host
  end
  config.vm.provision "docker" do |d|
    d.build_image "/vagrant", args: "-t kdama/devenv"
  end
end
