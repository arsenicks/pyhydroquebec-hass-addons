FROM hassioaddons/base:latest

RUN apk add --no-cache gcc musl-dev curl python3 py3-pip python3-dev

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install -r requirements.txt --force-reinstall --no-cache-dir --ignore-installed

COPY ./entrypoint.sh ./

COPY . .

RUN ["chmod", "+x", "./entrypoint.sh"]

CMD [ "./entrypoint.sh" ]
