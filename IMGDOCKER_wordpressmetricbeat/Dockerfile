FROM wordpress:latest
MAINTAINER Ángel Suárez Pérez "angelsp1612@gmail.com"
COPY ./metricbeat-8.0.0-amd64.deb /var/www/html
RUN dpkg -i /var/www/html/metricbeat-8.0.0-amd64.deb
RUN a2enmod status
COPY ./000-default.conf /etc/apache2/sites-enabled/000-default.conf
COPY ./metricbeat.yml /etc/metricbeat/metricbeat.yml
COPY ./apache.yml /etc/metricbeat/modules.d/apache.yml
COPY ./script.sh /script.sh
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]
