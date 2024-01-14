#kriteria: 3

# Perintah dasar untuk file build
#!/bin/bash

# Membuat image docker dan diberikan nama item-app menggunakan versi 1
docker build -t item-app:v1 .

# Mendaftarkan setiap images yang terdapat di dalam docker lokal
docker images

# Menggantikan nama tag menjadi docker hub yang ditambahkan dengan username
docker tag item-app:v1 craziyuhuu/item-app:v1

# Menggunakan password yang sudah ada di dalam export dan melakukan login ke dalam docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u craziyuhuu --password-stdin

# Melakukan publish terhadap image yang sudah dibuat di lokal ke dalam docker hub
docker push craziyuhuu/item-app:v1
