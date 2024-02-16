FROM arm32v7/ubuntu:22.04
ENV TZ=America/Montreal
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y build-essential curl libssl-dev git tzdata
COPY build_cmake.sh /
RUN ./build_cmake.sh
