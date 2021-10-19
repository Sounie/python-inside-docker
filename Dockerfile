FROM python:3.10.0-alpine3.14

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY src/ .

CMD [ "python", "./server.py" ]
