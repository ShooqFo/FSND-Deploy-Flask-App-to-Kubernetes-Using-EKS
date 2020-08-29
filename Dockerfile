FROM python:stretch

# set work directory
COPY . /app
WORKDIR /app

RUN pip3 install --upgrade pip
COPY ./requirements.txt /app/requirements.txt
RUN pip3 install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

