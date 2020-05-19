Vagrant.configure("2") do |config|
    config.vm.box = "debian/buster64"
    config.vm.provision :shell, path: "init.sh"


    config.vm.define "admin01" do |admin01|
        admin01.vm.hostname = "admin01"
        admin01.vm.network "public_network"
        admin01.vm.network "private_network",ip:"192.0.0.1",virtualbox__intnet: true
        admin01.vm.provision :shell, path: "admin01/init.sh"
    end
    config.vm.define "server01" do |server01|
        server01.vm.hostname = "server01"
        server01.vm.network "private_network", ip: "10.9.8.11"
        server01.vm.network "forwarded_port", guest: 80, host: 8080
        server01.vm.provision :shell, path: "server01/init.sh"
    end
    config.vm.define "server02" do |server02|
        server02.vm.hostname ="server02"
        server02.vm.network "private_network",type:"dhcp", virtualbox__intnet: true
    end
  end