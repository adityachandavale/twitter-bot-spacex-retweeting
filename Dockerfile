FROM python:3.7-alpine

COPY /twitter_bot/config.py /bots/
COPY /twitter_bot/favretweet.py /bots/
COPY /twitter_bot/autoreply.py /bots/
COPY requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt

WORKDIR /bots
CMD ["python3","favretweet.py"]
