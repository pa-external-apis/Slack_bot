FROM python:3

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/pa-external-apis/slack_bot.git

WORKDIR slack_bot

RUN pip install -r requirements.txt

EXPOSE 8080

CMD [ "python3", "app.py" ]
