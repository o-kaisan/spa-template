

#

# Build Stage

#

FROM node:23

WORKDIR /app/web
COPY --link web/Makefile web/package.json web/package-lock.json ./

RUN npm install

COPY --link ./web/ .

