FROM marinobantli/alpine-wine:latest

#Environment
EXPOSE 5900
ENV DisplayResolution=1280x1024
ENV Prefix=/home/MetaTrader
ENV MTVers=""

COPY src/* /opt/
RUN chmod +x /opt/*.sh

CMD [ "/opt/bootstrapMT.sh" ]