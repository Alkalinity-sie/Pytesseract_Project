FROM python:3
MAINTAINER Youssef Ellaabi "youssef.ellaabi@everycheck.fr"
WORKDIR /usr/src/app
RUN apt update && apt install -y libsm6 libxext6
RUN apt-get -y install tesseract-ocr
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./src/Id_check.py" ]