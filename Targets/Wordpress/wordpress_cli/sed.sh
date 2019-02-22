#!/bin/bash
#echo "define('JWT_AUTH_SECRET_KEY', 'your-top-secret-key');" >> /var/www/html/wp-config.php; 
#echo "define('JWT_AUTH_CORS_ENABLE', true);" >> /var/www/html/wp-config.php
sed -i "s/define( 'DB_COLLATE', '' );/define( 'DB_COLLATE', '' );\ndefine('JWT_AUTH_SECRET_KEY', 'your-top-secret-key');\ndefine('JWT_AUTH_CORS_ENABLE', true);\n/" /var/www/html/wp-config.php
sed -i "s/RewriteBase \//RewriteBase \/\nRewriteRule \^wp-json\/\(\.\*\) \/?rest_route=\/\$1 \[L\]\n/" /var/www/html/.htaccess

