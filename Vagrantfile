Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, :path => "bootstrap.sh", privileged: false

  #homefolder
  config.vm.synced_folder ENV['HOME'], "/home/vagrant/#{ENV['USER']}"
  
# copy keys
  config.vm.provision "file", source: "~/.ssh/id_rsa", destination: "/home/vagrant/.ssh/id_rsa"
  config.vm.provision "shell", inline: "chmod 0400 /home/vagrant/.ssh/id_rsa"

#forward port for webrick. 
  config.vm.network "forwarded_port", guest: 3000, host: 3000
end