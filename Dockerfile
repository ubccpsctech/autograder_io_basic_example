## Pre-compiled Linux distributions with pre-installed Node JS, Java, Python, etc. are available.
## https://hub.docker.com/search/?type=image
FROM ubuntu:14.04
WORKDIR /app

## Install any dependencies needed to mark your code using a package manager compatible with your Linux distribution
RUN apt-get update
RUN apt-get install git -y

COPY exampleScript/markAssn.sh /app/markAssn.sh

## Set chmod -R 777 on your work directory to ensure that AutoTest can work read the data
RUN chmod -R 777 .

## CMD will trigger once student code is pushed to a repository.
CMD ["/app/markAssn.sh"]
