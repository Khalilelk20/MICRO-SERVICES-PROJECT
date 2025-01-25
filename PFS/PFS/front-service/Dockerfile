FROM php:7.4-apache

# Installer les extensions PHP nécessaires
RUN docker-php-ext-install mysqli


# Copier les fichiers de l'application
COPY . /var/www/html/


# Modifier les permissions des fichiers
RUN chmod -R 755 /var/www/html

# Exposer le port HTTP
EXPOSE 80
