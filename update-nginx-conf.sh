#!/bin/bash

# Run database migrations
server_name=${SERVER_NAME}

sed -i 's/server_name_template/'$server_name'/g' /etc/nginx/conf.d/default.conf

# service nginx restart
exec nginx -g 'daemon off;'
