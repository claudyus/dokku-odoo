FROM odoo:10.0

COPY ./entrypoint.sh /
COPY ./odoo.conf /etc/odoo/
RUN chown odoo /etc/odoo/odoo.conf

RUN mkdir -p /mnt/extra-addons \
        && chown -R odoo /mnt/extra-addons

ENTRYPOINT ["/entrypoint.sh", "odoo"]
