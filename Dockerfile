FROM alpine:latest
RUN apk update
RUN apk upgrade
RUN apk add --no-cache --virtual .build-deps ca-certificates git curl iptables bash
ADD /v2/v2ray /v2/v2ray
RUN chmod +x /v2/v2ray

ADD /v2/v2ctl /v2/v2ctl
RUN chmod +x /v2/v2ctl

ADD configure.sh /configure.sh
RUN chmod +x /configure.sh

CMD /configure.sh
