FROM python:3.9

RUN mkdir /my_django_app

WORKDIR /my_django_app

COPY requirements.txt /my_django_app/

RUN pip install -r requirements.txt

COPY . /my_django_app/

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]