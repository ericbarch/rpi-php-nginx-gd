FROM arm32v7/ubuntu

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y nginx php php-fpm php-gd

COPY default /etc/nginx/sites-available/default

COPY run.sh /run.sh
RUN chmod a+rx /run.sh

EXPOSE 80
CMD ["/bin/bash", "/run.sh"]
