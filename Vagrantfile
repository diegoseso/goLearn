# This is the initial configuration for our machine with Vagrant

Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  config.vm.hostname = "goLearn"
  config.vm.network :private_network, ip: '192.168.56.101'
  config.vm.synced_folder ".", "/code", nfs: true, mount_options: ['nolock,vers=3,udp']
  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--cpuexecutioncap", "50",
      "--memory", "768",
    ]
  end
  config.vm.provision :shell, path: "setup.sh"
end
