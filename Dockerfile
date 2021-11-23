ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache openssl ca-certificates fuse \ 
    && wget -O rclone.zip https://downloads.rclone.org/rclone-current-linux-amd64.zip \
    && unzip rclone.zip \
    && mv rclone*/rclone /usr/bin \ 
    && rm -r rclone* 

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]