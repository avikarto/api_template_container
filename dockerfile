FROM python:3.7.13-slim-buster

# install base environment (note: single layer)
RUN apt-get update && \
	apt-get install -y build-essential wget ca-certificates procps

# install python environment
COPY requirements.txt requirements.txt
RUN pip config set global.trusted-host "pypi.org pypi.python.org files.pythonhosted.org"
RUN python3 -m pip install -U pip setuptools wheel
RUN python3 -m pip install -r requirements.txt

# move source code into container
COPY /src /src
WORKDIR /src

# start the API and init shell
EXPOSE 16001
RUN chmod +x ./start_api.sh
CMD . ./start_api.sh && /bin/bash
