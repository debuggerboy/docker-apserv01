FROM alpine:3.4
MAINTAINER Anish.P.Asokan "debuggerboy"

RUN add --no-cache bash git nginx supervisor uwsgi uwsgi-python bash curl git py-pip && pip install --upgrade pip && pip install flask

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
VOLUME ["/var/cache/nginx"]