FROM ubuntu:24.04
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt clean
ADD apache_folder/index.html /var/www/html/index.html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]

# This is a comment, and is ignored by the build process.
