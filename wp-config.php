<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'linhchi_travel' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '9 q$%e:-2q&hR6(e2Sz(?vDRwk_p4Vt@GOo|&1C{G3bK?ZdYH;I:XU^;V~0qpcK+' );
define( 'SECURE_AUTH_KEY',  '3u/<o+.~xZ-/V;MB5IV!EDxvziblcXg?_y>Aln4+Wz?a&6Z,V*^8rM3:f<Wd3@kI' );
define( 'LOGGED_IN_KEY',    '*dRPw|ZY|];v4&W9 e!i[K6<%GxiTYLSnlCpr(iM+]T`.<e@jLK]lo;qYtZaE]My' );
define( 'NONCE_KEY',        'D}rj]-?[OB1$O1}~;a42FQ|!g~d>I,xe-dULIPW4I|(EtJI3qMX@T2LSRb`j$AD0' );
define( 'AUTH_SALT',        '&ggyR2p5P>{~F{q(Y;<E(gV|bL5OpN =pcKI%3euoYC4T2!^0Y:?HZiR+#ECy.vQ' );
define( 'SECURE_AUTH_SALT', '^xat&kakHn7_Do{2g<Y&zX2A X/EK~yyzt2TD-vDlvN39li>>xn#$v!:$$$Q)Nrz' );
define( 'LOGGED_IN_SALT',   'x2Qz_,ish~Yxl*-7jI/{)0<rz%lQ:jG&`x$;Vlb7i]C9k6ksSmkUm^kX+OGI./ n' );
define( 'NONCE_SALT',       'Hng>P^6Y//ZOLUGfPEF$_pv~pR!n:vwbDws%wG,>$Z/{EL9|ho,[AnB xQ!<6Wa5' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
