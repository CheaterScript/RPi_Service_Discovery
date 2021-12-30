FROM alpine
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk add curl
RUN apk add wireless-tools wpa_supplicant
COPY ./cmd.sh .
# CMD ["curl", "-d", "ip=${local_ip}&hostname=${hostname}", "-X" "POST", "https://api.leastai.com/api/v1/"]
CMD ["sh", "./cmd.sh"]