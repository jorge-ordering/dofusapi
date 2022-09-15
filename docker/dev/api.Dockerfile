FROM python:3.10.5-slim

ENV mkdir -p /var/www/venv
ENV VIRTUAL_ENV=/var/www/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
# RUN echo "$PATH"

WORKDIR /var/www/api

COPY ./requirements.txt /var/www/api/requirements.txt

RUN pip3 install --no-cache-dir --upgrade -r /var/www/api/requirements.txt

COPY ./app /var/www/api/app

CMD ["sh", "/var/www/api/docker/dev/run.sh"]

