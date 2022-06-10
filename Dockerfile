FROM emscripten/emsdk:3.1.13
WORKDIR /root

RUN mkdir src && \
        cd src && \
        curl -L -O http://www.fftw.org/fftw-3.3.10.tar.gz && \
        tar xvzf fftw-3.3.10.tar.gz

CMD cd /root/src/fftw-3.3.10 && \
        emconfigure ./configure && \
        emmake make && \
        cp a.wasm /root/lib/a.wasm
