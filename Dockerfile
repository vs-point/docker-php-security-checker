FROM alpine:latest

RUN apk --no-cache add curl

RUN PHP_SC_VERSION=$(curl -s "https://api.github.com/repos/fabpot/local-php-security-checker/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/;s/^v//') && \
	curl -LSs https://github.com/fabpot/local-php-security-checker/releases/download/v${PHP_SC_VERSION}/local-php-security-checker_${PHP_SC_VERSION}_linux_amd64 > /root/local-php-security-checker && \
	chmod +x /root/local-php-security-checker && \
	unset PHP_SC_VERSION

WORKDIR /usr/local/app

CMD /root/local-php-security-checker
