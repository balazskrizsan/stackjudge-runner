# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2010"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network "forwarded_port", guest: 80,    host: 80,    host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 81,    host: 81,    host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 5432,  host: 5432,  host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 54320, host: 54320, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 54321, host: 54321, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 6379,  host: 6379,  host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 63790, host: 63790, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 63791, host: 63791, host_ip: "127.0.0.1"
  config.vm.synced_folder ".", "/vagrant_data"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "6144"
  end
  config.vm.provision "shell", inline: <<-SHELL
    echo "===== Update ================================================================================================"

    apt-get update

    echo "===== Installing docker ====================================================================================="

    apt-get install -y apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"
    apt-get update
    apt-get install -y docker-ce
    systemctl start docker
    systemctl enable docker

    echo "===== Installing docker compose ============================================================================="

    apt-get install -y jq
    DOCKER_COMPOSE_VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | jq .name -r)
    curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose

    echo "===== Installing nodejs ======================================================================================"
    apt install -y nodejs

    echo "===== Installing npm =--====================================================================================="
    apt install -y npm

    echo "===== Versions =============================================================================================="

    echo "-- Docker version:"
    docker --version
    echo "-- Docker-compose version:"
    docker-compose --version
    echo "-- nodejs version:"
    node -v
    echo "-- npm version:"
    npm -v
    echo "-- Docker status:"
    systemctl status docker

    echo "===== Docker hello world test ==============================================================================="

    docker run hello-world

    echo "===== ROOT LOGIN ENABLED: root@rootroot ====================================================================="

    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
    systemctl restart ssh
    echo "root:rootroot" | chpasswd

    echo "===== EXPOSED PORTS (default) ==============================================================================="
    echo " - :80    / UI (Angular)"
    echo " - :81    / Backend (Java)"
    echo " - :5432  / Postgres"
    echo " - :54320 / Postgres - dev"
    echo " - :54321 / Postgres - dev test"
    echo " - :6379  / redis"
    echo " - :63790 / redis - dev"
    echo " - :63791 / redis - dev test"
  SHELL
end
