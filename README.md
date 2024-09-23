# static-website - DOCKER

![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

---

Ce fichier Docker Compose configure un serveur web Nginx avec support HTTPS utilisant un certificat auto-signé (tls.sh). Il sert du contenu à partir d'un répertoire local et utilise une configuration Nginx personnalisée. Le serveur est accessible à la fois via HTTP (port 80) et HTTPS (port 443).

```yaml
version: '3.8'

services:
  satis_frontal:
    image: nginx:alpine
    restart: always
    volumes:
# SANS FICHIER DE CONF:
#      - ./html5up-eventually:/usr/share/nginx/html
# AVEC FICHIER DE CONF:    
#      - ./fichierdeconf.conf:/etc/nginx/conf.d/default.conf
#      - ./html5up-eventually:/var/www/html
# AVEC CERTIFICAT TLS + FICHIER DE CONF :
      - ./fichierdeconfTLS.conf:/etc/nginx/conf.d/default.conf
      - ./selfsigned.crt:/etc/ssl/certs/ssl.crt
      - ./selfsigned.key:/etc/ssl/private/ssl.key
      - ./html5up-eventually:/var/www/html
    ports:
      - "80:80"
      - "443:443"


```
