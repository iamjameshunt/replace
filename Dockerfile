FROM alpine:3
RUN apk add --update --no-cache perl
ADD replace /usr/bin/replace
ENTRYPOINT ["/usr/bin/replace"]
