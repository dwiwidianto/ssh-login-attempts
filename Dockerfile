FROM python:3.9-slim-buster

WORKDIR /usr/app/src
COPY . .

RUN python -m pip install \
            --upgrade pip \
            Flask \
            subprocess.run

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]