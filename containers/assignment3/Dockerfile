FROM alpine:3.14

LABEL maintainer="Deepak Nishad <dnishad158@gmail.com>"

LABEL description="Node.js application container"

MAINTAINER Deepak Nishad <dnishad158@gmail.com>

RUN apk update && apk upgrade && apk add nodejs npm

WORKDIR /app

COPY index.js .

CMD ["node", "index.js"]