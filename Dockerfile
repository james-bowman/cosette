FROM go
MAINTAINER james.edward.bowman@gmail.com

RUN apt-get update

# Install git
RUN apt-get install -y git

# Install pkg-config
RUN apt-get install -y pkg-config

# Install libgit2-22
RUN apt-get install -y libgit2-dev

ADD cosette .
CMD ./cosette