FROM keymetrics/pm2:latest-alpine

WORKDIR /app

EXPOSE 3000
EXPOSE 4444
    
RUN node -v && npm -v  \
&& sudo npm install -g pm2 mocha;

CMD ls -lat;pm2-docker start pm2.json;sudo npm run test;


