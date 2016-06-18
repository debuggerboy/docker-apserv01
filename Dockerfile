FROM alpine:3.4
MAINTAINER Anish.P.Asokan "debuggerboy"

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
VOLUME ["/var/cache/nginx"]

RUN add --no-cache bash git nginx uwsgi uwsgi-python py-pip && pip install --upgrade pip && pip install flask