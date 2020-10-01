FROM alpine
COPY csteps /usr/local/bin/
RUN csteps 1
ADD start.sh /start.sh
RUN csteps 2
CMD /start.sh