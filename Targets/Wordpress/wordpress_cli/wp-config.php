<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'wordpress');

/** MySQL database password */
define('DB_PASSWORD', '54y6RxN7GfC7aes3');

/** MySQL hostname */
define('DB_HOST', 'wordpress_data');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '<_IPVJ^rd7p@8UIRrT}7U6pE[f(8[L99[}Kr,}Gz-o4}8D7`p$?zb nyAnnpO9J<');
define('SECURE_AUTH_KEY',  '1GO6 `<h3&4:yd,K&+cv/SkFGT5b$&xModZdCHV^XPQQTMXqj:,[i|x>|u>t[Cmv');
define('LOGGED_IN_KEY',    '-rlFxPNHu|?qMY.]9M8B|WwheVIBHqxP=fcd42P^C./e)v[87?>ma$KSK=zsBe+h');
define('NONCE_KEY',        '59vz[Q_#}~~TOZ|%7.rvj?[Hc3]}Q0,.kB(vcA.K4hn:W K*tpH_me{0G6P^qey(');
define('AUTH_SALT',        'Snd__*ZhB{ih~qs20iwU||0}B,*tvFY*1tzzOb~]D~y/Kk4R?]B9<H%+[8&IHZ0{');
define('SECURE_AUTH_SALT', 'pyt]JLvOmrYL)**>0+(d< -{_Ax9*@uewcP!Sc2T@AWI`%]^=I>IZ`99;W:z4J>K');
define('LOGGED_IN_SALT',   'u?KRIqFtiOoG/wg*}u3QEC.~S<3S|^<`zTH*Z%&pw<tq&ix*8TfzulWa/7b2}7Y4');
define('NONCE_SALT',       '~P?E&HbjW,QN5p>iW[.~]k+*uE0[*-3O-t~9JOx=-Sb ,F!%1q{Q/=9)h;>nhN~d');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
