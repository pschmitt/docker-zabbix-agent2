ARG BASE_IMAGE=zabbix/zabbix-agent2:latest
FROM $BASE_IMAGE

USER root

RUN apk add --no-cache jq perl smartmontools sudo

VOLUME ["/etc/zabbix/bin"]

USER zabbix
