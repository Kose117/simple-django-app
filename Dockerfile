FROM python:3.13.0

WORKDIR /usr/app

COPY . .

RUN pip install django

RUN python cool_counters/manage.py migrate

CMD ["python", "cool_counters/manage.py", "runserver"]
