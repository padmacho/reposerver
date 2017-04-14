Vagrant.configure("2") do |config|
	config.vm.define :reposerver do |reposerver|
		reposerver.vm.box = "ubuntu/trusty64"
		reposerver.vm.box_check_update = false
		reposerver.vm.provider "virtualbox" do |v|
		  v.name = "reposerver"
		  v.customize ["modifyvm", :id, "--memory", "512"]
		end
		reposerver.vm.network :private_network, ip: "192.168.7.7"
		reposerver.vm.hostname = "reposerver"
    reposerver.vm.provision "shell", path: "setup.sh"
		#config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
		#reposerver.vm.provision :shell, :path=> 'setup.sh'
	end
end
