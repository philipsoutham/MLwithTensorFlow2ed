FROM python:3.7-slim

WORKDIR /usr/src/app

COPY requirements.txt .

RUN apt-get update \
    && apt-get install -y gcc g++ mpi-default-bin libsndfile1-dev \
    && pip install -r requirements.txt

ENV HOME /tmp

USER 1000:1000

ENTRYPOINT [ "jupyter", "notebook", "--no-browser", "--ip", "0.0.0.0" ]