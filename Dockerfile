# Gunakan image dasar dengan PHP yang sudah terinstal
FROM php:8.2-apache

# Install ekstensi PHP tambahan jika diperlukan
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Salin file konfigurasi atau aplikasi Anda ke dalam kontainer
COPY . /var/www/html/

# Tentukan port yang digunakan oleh Apache
EXPOSE 80
