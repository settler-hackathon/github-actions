FROM python:3.10-slim-bullseye

WORKDIR /python-docker

COPY requirements.txt requirements.txt
COPY requirements-dev.txt requirements-dev.txt
RUN pip3 install -r requirements-dev.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]