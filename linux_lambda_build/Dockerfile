FROM amd64/ubuntu:20.04
ENV TZ=America/Montreal
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y git zip build-essential cmake libcurl4-openssl-dev
RUN git clone https://github.com/awslabs/aws-lambda-cpp.git && \
  cd aws-lambda-cpp && mkdir build && cd build && \
  cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=~/lambda-install && \
  make && make install
