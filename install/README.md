# AirbyteAirflowRedshift
一、airflow install on EC2

use ubuntu AMI

run script

airflowInstall.sh


连接到airflow

http://EIP:8080

或者建立隧道

SSH_KEY=~/**.pem

ssh -i $SSH_KEY -L 8080:localhost:8080 -N -f ubuntu@13.**.**.116

http://localhost:8080 来访问

二、airbyte install on EC2

use Amazon linux 2 AMI

run script 

airbyteInstall.sh

运行会失败， 显示docker-compse不存在

修改run-ab-platform.sh文件中 docker-compse 为 docker compose，则可以运行

运行命令使用

sudo -i

cd ~/airbyte

nohup ./run-ab-platform.sh >> ./run.log 2>&1 &

或者第二种Install Airbyte的方法

mkdir airbyte && cd airbyte

wget https://raw.githubusercontent.com/airbytehq/airbyte-platform/main/{.env,flags.yml,docker-compose.yaml}

docker compose up -d # run the Docker container


连接到airbyte

http://EIP:8000

userName airbyte

password password

或者建立隧道

SSH_KEY=~/**.pem

ssh -i $SSH_KEY -L 8000:localhost:8000 -N -f ec2-user@13.**.**.116

http://localhost:8000
