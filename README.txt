# static-website - DOCKER

```yaml
version: '3.8'

services:
  satis_frontal:
    image: nginx:alpine
    restart: always
    volumes:
      - ./html5up-eventually:/usr/share/nginx/html      
#      - ./fichierdeconf.conf:/etc/nginx/conf.d/default.conf
#      - ./selfsigned.crt:/etc/ssl/certs/ssl.crt
#      - ./selfsigned.key:/etc/ssl/private/ssl.key
    ports:
      - "80:80"
#      - "443:443"

```
