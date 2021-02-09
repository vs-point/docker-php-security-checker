FROM alpine:latest

RUN apk --no-cache add curl

RUN curl https://github.com/fabpot/local-php-security-checker/releases/latest/download/local-php-security-checker_1.0.0_darwin_amd64 --output /root/local-php-security-checker && chmod +x /root/local-php-security-checker

WORKDIR /usr/local/app

CMD /root/local-php-security-checker
