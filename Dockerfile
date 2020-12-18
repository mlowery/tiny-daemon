FROM gcc:4.9 AS gcc
COPY myapp.c myapp.c
RUN gcc -static -Os -nostartfiles -fno-asynchronous-unwind-tables -o myapp myapp.c

FROM scratch
COPY --from=gcc --chown=1001:1001 myapp myapp
USER 1001
ENTRYPOINT ["/myapp"]
