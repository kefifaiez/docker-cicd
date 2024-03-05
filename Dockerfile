FROM ubuntu:latest

# Informations sur le mainteneur
LABEL maintainer="k.faiez@hotmail.fr"

# Mise à jour des paquets et installation d'Apache, zip et unzip
RUN apt-get update && \
    apt-get install -y apache2 zip unzip

# Ajout du fichier ZIP distant au répertoire /var/www/html/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/

# Changement du répertoire de travail à /var/www/html/
WORKDIR /var/www/html/

# Extraction du contenu du fichier ZIP
RUN unzip photogenic.zip && \
    rm photogenic.zip

# Commande de démarrage pour Apache
CMD ["apache2ctl", "-D", "FOREGROUND"]

# Exposition du port 80
EXPOSE 80

 
 
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
