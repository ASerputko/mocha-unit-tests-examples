# Base
FROM node:0.10.38

# Set Environment settings
ENV NODE_ENV production

# App
ADD . /www
# Install app dependencies
RUN cd /www; npm install

EXPOSE  9000
CMD ["node", "/www/server.js"]
