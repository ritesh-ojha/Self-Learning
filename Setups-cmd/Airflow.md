# Airflow Setup in EC2 instance

## Update and Installation of Apache-airflow
```bash
sudo apt-get update
sudo apt install python3.11-venv
sudo apt install python3.11-pip
sudo pip install apache-airflow
```

## Airflow Server Start
```bash
airflow standalone
```

## Port setup
If you want to access the airflow webserver from public ip

`add 8080 tcp in inbound rules for your ec2 instance`

## You successfully run airflow in EC2 instance
