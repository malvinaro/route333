Vagrant.configure("2") do |config|
  config.vm.define "a1-1" do |a1_1|
    a1_1.vm.box = "ubuntu/bionic64"
    a1_1.vm.provider "virtualbox" do |vb|
      vb.memory = 1024  # Set RAM to 1024MB
      vb.customize ['modifyvm', :id, "--nic2", 'intnet']
    end
    a1_1.vm.provision "shell", inline: <<-SHELL
    cat /vagrant/a1-1 | sudo tee /etc/netplan/*.yaml && sudo netplan apply ;
    SHELL
  end

  config.vm.define "a1-2" do |a1_2|
    a1_2.vm.box = "ubuntu/bionic64"
    a1_2.vm.provider "virtualbox" do |vb|
      vb.memory = 1024  # Set RAM to 1024MB
      vb.customize ['modifyvm', :id, "--nic2", 'intnet']
    end
    a1_2.vm.provision "shell", inline: <<-SHELL
    cat /vagrant/a1-2 | sudo tee /etc/netplan/*.yaml && sudo netplan apply ;
    SHELL
  end

  config.vm.define "a1-3" do |a1_3|
    a1_3.vm.box = "ubuntu/bionic64"
    a1_3.vm.provider "virtualbox" do |vb|
      vb.memory = 1024  # Set RAM to 1024MB
      vb.customize ['modifyvm', :id, "--nic2", 'intnet']
      vb.customize ['modifyvm', :id, "--nic3", 'intnet']
      vb.customize ['modifyvm', :id, "--nic4", 'intnet']
      vb.customize ['modifyvm', :id, "--nic5", 'intnet']
    end
    a1_3.vm.provision "shell", inline: <<-SHELL
    cat /vagrant/a1-3 | sudo tee /etc/netplan/*.yaml && sudo netplan apply ;
    bash /vagrant/a1-3.sh;
    SHELL
  end

  config.vm.define "a1-4" do |a1_4|
    a1_4.vm.box = "ubuntu/bionic64"
    a1_4.vm.provider "virtualbox" do |vb|
      vb.memory = 1024  # Set RAM to 1024MB
      vb.customize ['modifyvm', :id, "--nic2", 'intnet']
      vb.customize ['modifyvm', :id, "--nic3", 'intnet']
    end
    a1_4.vm.provision "shell", inline: <<-SHELL
    cat /vagrant/a1-4 | sudo tee /etc/netplan/*.yaml && sudo netplan apply ;     
    SHELL
  end

  config.vm.define "a1-5" do |a1_5|
    a1_5.vm.box = "ubuntu/bionic64"
    a1_5.vm.provider "virtualbox" do |vb|
      vb.memory = 1024  # Set RAM to 1024MB
      vb.customize ['modifyvm', :id, "--nic2", 'intnet']
      vb.customize ['modifyvm', :id, "--nic3", 'intnet']
    end
   a1_5.vm.provision "shell", inline: <<-SHELL
   cat /vagrant/a1-5 | sudo tee /etc/netplan/*.yaml && sudo netplan apply ;     
   sudo sysctl -w net.ipv4.ip_forward=1;
   SHELL
 end
end

