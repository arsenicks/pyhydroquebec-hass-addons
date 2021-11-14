FROM python:3.7-alpine

ARG BASHIO_VERSION=0.13.1

RUN apk add --no-cache gcc musl-dev curl

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install -r requirements.txt --force-reinstall --no-cache-dir \
    && mkdir -p /usr/src/bashio \
    && curl -L -f -s "https://github.com/hassio-addons/bashio/archive/v${BASHIO_VERSION}.tar.gz" \
    | tar -xzf - --strip 1 -C /usr/src/bashio \
    && mv /usr/src/bashio/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio

COPY ./entrypoint.sh .

COPY . .

RUN ["chmod", "+x", "./entrypoint.sh"]

RUN python setup.py install

CMD [ "./entrypoint.sh" ]
