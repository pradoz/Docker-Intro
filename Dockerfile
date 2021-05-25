FROM alpine:latest

RUN apk update
RUN apk add git build-base

RUN git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg

WORKDIR /ffmpeg

RUN ./configure --disable-x86asm
RUN make -j 2
RUN make install


# CMD ["sh", "./print_date.sh"]
