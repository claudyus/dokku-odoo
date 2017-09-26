dokku-odoo
==========

A Odoo image ready to be deployed on dokku mini-PaaS

Based on official docker-odoo image this image is just changing the exposed port to port 5000 to be ready to go with dokku defaults.

Configuration vars
-------------------
 - DB_HOST: Database host name, default `db`
 - DB_PORT: Database port, default `5432`
 - DB_USER: Database username, default `odoo`
 - DB_NAME: Set the database name, default `odoo`
 - DB_PASSWORD: Database password, default `odoo`


Volumes settings in dokku
-------------------------

    sudo mkdir -p /var/lib/dokku/data/storage/odoo-{addons,filestore}
    sudo chmod a+rw -R /var/lib/dokku/data/storage/odoo-{addons,filestore}
    dokku storage:mount odoo /var/lib/dokku/data/storage/odoo-filestore:/var/lib/odoo
    dokku storage:mount odoo /var/lib/dokku/data/storage/odoo-addons:/mnt/addons
