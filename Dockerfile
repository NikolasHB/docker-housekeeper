FROM alpine:3.8
LABEL maintainer "Nikolas Schreck <nikolasschreck@gmail.com>"
LABEL version="1.0"
LABEL description="Starts a cronjob running at 02:00 every day, \
removing every file older than 30days in /logshare"

COPY crontab /etc/cron/crontab

RUN crontab /etc/cron/crontab

CMD ["crond", "-f"]
