FROM python:3.6

RUN apt-get update && apt-get install vim git -y

ADD ./requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

ADD ./bot /bot/

WORKDIR /bot/

CMD make
