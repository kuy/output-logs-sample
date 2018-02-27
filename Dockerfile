from alpine:latest

ADD count.sh /

ENTRYPOINT ["/bin/sh","/count.sh"]
