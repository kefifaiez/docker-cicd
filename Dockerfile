# Utilisation de l'image Apache officielle
FROM httpd:latest

# Informations sur le mainteneur
LABEL maintainer="k.faiez@hotmail.fr"

# Installation de l'utilitaire unzip (si nécessaire)
RUN apt-get update && apt-get install -y unzip

# Copie du fichier RAR distant dans le répertoire /usr/local/apache2/htdocs/
COPY inance-html.zip /usr/local/apache2/htdocs/

# Changement du répertoire de travail à /usr/local/apache2/htdocs/
WORKDIR /usr/local/apache2/htdocs/

# Extraction du contenu du fichier RAR
RUN unzip inance-html.zip && \
    rm inance-html.zip





 
 
# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip shine.zip
# RUN cp -rvf shine/* .
# RUN rm -rf shine shine.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80   
