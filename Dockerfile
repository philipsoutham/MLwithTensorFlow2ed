FROM python:3.7-slim

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y gcc g++ mpi-default-bin libsndfile1-dev

# Installing specfic build of Pipenv that we know works (default doesn't work with tensorflow)
# RUN pip install https://github.com/pypa/pipenv/archive/3e63f078adcdd0a053e4af47b0849bff0018f899.zip

COPY requirements.txt .

RUN pip install -r requirements.txt

ENV HOME /tmp

ENTRYPOINT [ "jupyter", "notebook", "--no-browser", "--ip", "0.0.0.0" ]