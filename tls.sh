openssl req -new -newkey rsa:2048 -days 36500 -nodes -x509 \
-keyout ./selfsigned.key \
-out ./selfsigned.crt \
-subj "//CN=hostname" \
-addext "subjectAltName = IP:127.0.0.1"