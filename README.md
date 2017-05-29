dokku-odoo
==========

A Odoo image ready to be deployed on dokku mini-PaaS

Based on official docker-odoo image this image is just changing the exposed port to port 5000 to be ready to go with dokku defaults.

Configuration vars
-------------------
 - HOST: Database host name, default `db`
 - DB_PORT: Database port, default `5432`
 - USER: Database username, default `odoo`
 - PASSWORD: Database password, default `odoo`
