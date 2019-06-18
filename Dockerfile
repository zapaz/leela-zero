FROM gopaz/lila0-base

RUN mv /src/build/leelaz /usr/local/bin/leelaz
ADD http://zero.sjeng.org/best-network /root/.local/share/leela-zero/best-network

CMD ["leelaz"]
