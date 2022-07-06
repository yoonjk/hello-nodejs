FROM node:14-slim

MAINTAINER Red Hat Training <nexweb1@gmail.com>

ENV PORT=8080 \
    APP_ROOT=/opt/app-root

RUN mkdir -p /opt/app-root

WORKDIR $APP_ROOT

# Copy the app source code to APP_ROOT
ONBUILD COPY src $APP_ROOT

# Install the dependency
ONBUILD RUN npm install

# Start node server on port 8080
CMD ["npm", "start"]

