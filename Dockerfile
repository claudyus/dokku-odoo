FROM odoo:12.0

USER root

COPY ./entrypoint.sh /
COPY ./odoo.conf /etc/odoo/
RUN chown odoo /etc/odoo/odoo.conf

RUN mkdir -p /mnt/extra-addons \
        && chown -R odoo /mnt/extra-addons

USER odoo

ENTRYPOINT ["/entrypoint.sh", "odoo"]
