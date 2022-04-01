FROM python:3.8

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 80

ENTRYPOINT ["bash", "restart_db_dev.sh"]