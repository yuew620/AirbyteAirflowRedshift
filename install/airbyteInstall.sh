sudo -i
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker $USER

//sudo yum install -y docker-compose-plugin
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}

mkdir -p $DOCKER_CONFIG/cli-plugins

curl -SL https://github.com/docker/compose/releases/download/v2.16.0/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose

chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

docker compose version

git clone https://github.com/airbytehq/airbyte.git
cd airbyte
./run-ab-platform.sh

