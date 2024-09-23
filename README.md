# static-website - DOCKER

![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

---

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
      - ./fichierdeconf.conf:/etc/nginx/conf.d/default.conf
      - ./html5up-eventually:/var/www/html
# AVEC CERTIFICAT TLS + FICHIER DE CONF :
#      - ./selfsigned.crt:/etc/ssl/certs/ssl.crt
#      - ./selfsigned.key:/etc/ssl/private/ssl.key
    ports:
      - "80:80"
#      - "443:443"



```
