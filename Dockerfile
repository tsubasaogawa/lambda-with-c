FROM amazonlinux:2
MAINTAINER tsubasaogawa

WORKDIR /usr/local/src/lambda-with-c

RUN set -x && yum install -y gcc make

# ADD ./bootstrap .
ADD ./lambda_function.c .
ADD ./Makefile .

RUN make

