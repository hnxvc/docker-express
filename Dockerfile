FROM node:alpine
LABEL maintainer="hoa"

WORKDIR /app/

COPY package*.json ./
COPY index.js ./
COPY entrypoint.sh ./

RUN chmod a+x entrypoint.sh
RUN npm install

ENTRYPOINT [ "/app/entrypoint.sh" ]
EXPOSE 3000
