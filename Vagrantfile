Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.2"
  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--ostype", "RedHat_64"]
  end
end
