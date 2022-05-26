From ubuntu:18.04
Maintainer nrouijel (rouijel.nabil@gmail.com)
Run apt-get update
Run DEBIAN_FRONTED=noninteractive apt-get install -y nginx git
Expose 80
#Add static-website-example/ /var/www/html/
Run rm -Rf /var/www/html/*
Run git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
