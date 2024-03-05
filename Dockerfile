# Utilisation de l'image Apache officielle
FROM httpd:latest

# Informations sur le mainteneur
LABEL maintainer="k.faiez@hotmail.fr"

# Téléchargement du fichier ZIP distant et extraction du contenu dans le répertoire /usr/local/apache2/htdocs/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /usr/local/apache2/htdocs/

# Changement du répertoire de travail à /usr/local/apache2/htdocs/
WORKDIR /usr/local/apache2/htdocs/

# Extraction du contenu du fichier ZIP
RUN unzip photogenic.zip && \
    rm photogenic.zip

# Exposition du port 80 (inutile car cela est déjà défini dans l'image httpd)
# EXPOSE 80

# Aucune nécessité de spécifier CMD, car l'image httpd définit déjà une commande par défaut pour démarrer Apache


 
 
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
