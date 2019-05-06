dokku-odoo
==========

A Odoo image ready to be deployed on dokku mini-PaaS

Based on official docker-odoo image this image is just changing the exposed port to port 5000 to be ready to go with dokku defaults.


Volumes settings in dokku
-------------------------

    sudo mkdir -p /var/lib/dokku/data/storage/$APP-{addons,filestore}
    sudo chmod a+rw -R /var/lib/dokku/data/storage/$APP-{addons,filestore}
    dokku storage:mount $APP /var/lib/dokku/data/storage/$APP-filestore:/var/lib/odoo
    dokku storage:mount $APP /var/lib/dokku/data/storage/$APP-addons:/mnt/addons


Fix database connection
-------------------------
    dokku config:set odoo DB_HOST=dokku.postgres.odoo
    dokku config:set odoo DB_USER=odoo
    dokku config:set odoo DB_PASSWORD=odoo
    
 - Create odoo user
    ```docker exec -it <odoo db container> bash
    su - postgres
    psql
    CREATE USER odoo with password 'odoo' CREATEDB;
    \q
    exit
