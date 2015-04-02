#
#       .
#        ":"
#      ___:____     |"\/"|
#    ,'        `.    \  /
#    |  O        \___/  |
#  ~^~^~^~^~^~^~^~^~^~^~^~^~
#The php-fpm container

FROM wordpress
MAINTAINER kendu <devops@kendu.si>
RUN sed -i '/^upload_max_filesize /cupload_max_filesize = 2000m' /etc/php5/apache2/php.ini
RUN sed -i '/^post_max_size /cpost_max_size  = 2000m' /etc/php5/apache2/php.ini
