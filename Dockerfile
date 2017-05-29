# Based on https://github.com/odoo/docker/blob/f8af1a80b14d9e594fdef4df2ff78e655352473c/10.0/Dockerfile
FROM odoo:10.0

COPY ./odoo.conf /etc/odoo/

CMD ["/entrypoint.sh", "odoo"]
