FROM python:3.8

LABEL maintainer="Mauro Benendito"

COPY . /app
#  defines the working directory within the container
WORKDIR /app

EXPOSE 3111

RUN pip install -r requirements.txt
RUN python init_db.py

CMD [ "python", "app.py" ]