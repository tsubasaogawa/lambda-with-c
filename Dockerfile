FROM amazonlinux:2
MAINTAINER tsubasaogawa

WORKDIR /usr/local/src/lambda-with-c

RUN set -x && yum install -y gcc make

# ADD ./bootstrap .
COPY ./src/lambda_function.c .
COPY ./Makefile .

RUN make && make clean_obj

