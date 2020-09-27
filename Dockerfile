FROM alpine

ENV PORT    3000
ENV UUID    c95ef1d4-f3ac-4586-96e9-234a37dda068
ENV PROTOCOL    vmess

RUN apk update && apk add --no-cache unzip ca-certificates && \
    wget -c https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip && \
    unzip v2ray-linux-64.zip && rm -f v2ray-linux-64.zip && \
    chmod 700 v2ray v2ctl
    
ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh
