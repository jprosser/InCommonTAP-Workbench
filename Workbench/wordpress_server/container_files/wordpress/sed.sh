#!/bin/bash
#echo "define('JWT_AUTH_SECRET_KEY', 'your-top-secret-key');" >> /var/www/html/wp-config.php; 
#echo "define('JWT_AUTH_CORS_ENABLE', true);" >> /var/www/html/wp-config.php
#define( 'WP_HOME', 'https://localhost:12443' );
#define( 'WP_SITEURL', 'https://localhost:12443' );
mkdir /var/www/html/wordpress
mv /var/www/html/* /var/www/html/wordpress/
mv /var/www/html/.htaccess /var/www/html/wordpress/
sed -i "s/define( 'DB_COLLATE', '' );/define( 'DB_COLLATE', '' );\ndefine('JWT_AUTH_SECRET_KEY', 'your-top-secret-key');\ndefine('JWT_AUTH_CORS_ENABLE', true);\ndefine( 'WP_HOME', 'https:\/\/__CSPHOSTNAME__\/wordpress\/' );\ndefine( 'WP_SITEURL', 'https:\/\/__CSPHOSTNAME__\/wordpress\/' );\n/" /var/www/html/wordpress/wp-config.php
sed -i "s/RewriteBase \//RewriteBase \/\nRewriteRule \^wp-json\/\(\.\*\) \/?rest_route=\/\$1 \[L\]\n/" /var/www/html/wordpress/.htaccess
sed -i 's/RewriteRule \. \/index\.php \[L\]/RewriteCond %{REQUEST_URI} !\\\.sso\/\nRewriteRule \. \/index\.php \[L\]/' /var/www/html/wordpress/.htaccess
sed -i 's/AllowOverride None/AllowOverride All/'  /etc/httpd/conf/httpd.conf
sed -i 's/IncludeOptional conf.d\/\*.conf/IncludeOptional conf.d\/\*.conf\nHttpProtocolOptions Unsafe/' /etc/httpd/conf/httpd.conf
mysql -h wordpress_data -u wordpress --password=54y6RxN7GfC7aes3 wordpress < /root/config-shibb.sql
