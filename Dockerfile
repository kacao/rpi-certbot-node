FROM arm32v7/node

VOLUME /app
WORKDIR /app
RUN apt-get update
#RUN apt-get install certbot -y
RUN npm install pm2 -g

#COPY certbot-cron /etc/cron.d/certbot-cron
COPY startup /scripts/startup
RUN chmod +x /scripts/startup
CMD ["/scripts/startup"]
