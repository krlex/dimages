FROM witchman/debian
FROM node

RUN apt-get update -y

RUN apt-get install -y \
    python2.7 python-pip \
        libfreetype6 libfontconfig\
        node

        ENV PRERENDER_LOGGER false
        ENV BASIC_AUTH_USERNAME false
        ENV BASIC_AUTH_PASSWORD false

        ENV AWS_ACCESS_KEY_ID false
        ENV AWS_SECRET_ACCESS_KEY false
        ENV S3_BUCKET_NAME false

        ENV REDISTOGO_URL false
        ENV REDISCLOUD_URL false
        ENV REDISGREEN_URL false
        ENV REDIS_URL  false
        RUN git clone https://github.com/prerender/prerender.git
        RUN cd /prerender; npm install && npm update

        EXPOSE  3000
        CMD ["node", "/prerender/server.js"]

