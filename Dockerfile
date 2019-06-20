FROM gopaz/lila0-base AS base

FROM ubuntu:18.04

COPY --from=base /src/build/leelaz /usr/local/bin/leelaz
ADD http://zero.sjeng.org/best-network /root/.local/share/leela-zero/best-network

RUN apt-get update
RUN apt-get install -y apt-utils libboost-all-dev libopenblas-dev opencl-headers ocl-icd-libopencl1 ocl-icd-opencl-dev zlib1g-dev qt5-default qt5-qmake

CMD ["leelaz"]