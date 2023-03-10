sudo apt-get update
sudo apt-get install python-psycopg2
sudo apt-get install postgresql postgresql-contrib

sudo adduser airflow
sudo usermod -aG sudo airflow
su - airflow

su - airflow
sudo apt-get install python3-pip
sudo python3 -m pip install apache-airflow[postgres,s3,aws]

airflow db init
airflow standalone
