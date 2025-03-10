FROM devopsedu/webapp

MAINTAINER anandlilhare <anandlilhare69@gmail.com>

#Update Repository
RUN apt-get update -y

#Install Apache
RUN apt-get install -y apache2

#Install PHP Modules
RUN apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-common php7.0-mbstring php7.0-gd php7.0-intl php7.0-xml php7.0-mysql php7.0-mcrypt php7.0-zip

#Copy Application Files
RUN rm -rf /var/www/html/*
COPY website /var/www/html/

#Open port 80
EXPOSE 8080:80

#Start Apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
