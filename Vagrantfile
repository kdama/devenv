Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.2"
  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--ostype", "RedHat_64"]
  end
  config.vm.provision "docker" do |d|
    d.build_image "/vagrant", args: "-t kdama/devenv"
  end
end
