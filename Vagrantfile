Vagrant.configure("2") do |config|
  config.vm.box = "chavo1/xenial64"
  config.vm.provision "shell", path: "scripts/provision.sh" , privileged: false
  config.vm.synced_folder ".", "/vagrant", disabled: false
  config.vm.provision "file", source: "docker.json", destination: "/tmp/docker.json"

end
