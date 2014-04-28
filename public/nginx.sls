nginx:
    pkg.installed
#    service.running:
#        - watch: /etc/nginx/nginx.conf

#/etc/nginx/nginx.conf:
#  file.managed:
#      - source: salt://public/nginx/nginx.conf
