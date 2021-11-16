# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM

# Execute during the build of the image
ARG TEMPIO_VERSION BUILD_ARCH
RUN \
    curl -sSLf -o /usr/bin/tempio \
    "https://github.com/home-assistant/tempio/releases/download/${TEMPIO_VERSION}/tempio_${BUILD_ARCH}"

RUN apk add --no-cache gcc musl-dev curl python3 py3-pip python3-dev

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install -r requirements.txt --force-reinstall --no-cache-dir --ignore-installed

COPY ./entrypoint.sh ./

COPY . .

RUN ["chmod", "+x", "./entrypoint.sh"]

CMD [ "./entrypoint.sh" ]
