FROM fedora:latest
RUN dnf install -y update
RUN dnf install -y tuxpaint vim httpd
CMD httpd -D foreground
EXPOSE 80
COPY myinfo.html /var/www/html/
