FROM python:3.12-alpine

WORKDIR /fsub
COPY . ./

RUN apk add bash

ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV PIP_ROOT_USER_ACTION=ignore
ENV GIT_PYTHON_REFRESH=quiet

RUN pip install -qr requirements.txt

CMD ["bash", "start.sh"]
