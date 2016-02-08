Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, :path => "bootstrap.sh", privileged: false

  #homefolder
  config.vm.synced_folder "/Users/gbarnett", "/home/vagrant/gbarnett"

# copy keys
  config.vm.provision "file", source: "~/.ssh/id_rsa", destination: "/home/vagrant/.ssh/id_rsa"
  config.vm.provision "shell", inline: "chmod 0400 /home/vagrant/.ssh/id_rsa"
end