<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_unab' );

/** Database username */
define( 'DB_USER', 'admin_unab' );

/** Database password */
define( 'DB_PASSWORD', 'unab_321' );

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
define( 'AUTH_KEY',         'r,B3 VW^E!azwa:UHVQ/`=y~3jXQ!HI:K>w;Z;aqoj:Y;%bcDij^nr1Zh4FNWn{d' );
define( 'SECURE_AUTH_KEY',  'KXn-BU){#bm<:]Rgv@4si*MCwt!3xB1`*k`&tdy<).x/ZKaeuJP/h@]jm>Zjd.BJ' );
define( 'LOGGED_IN_KEY',    '4a(-2fE/svA@M(:+6:s-Zaev~:/)h#>56%qGh K^G=|HYoGO*2u8K-$bQC;NH1&^' );
define( 'NONCE_KEY',        '7Hm]__jA59hJ.N )+o3-o` z<#}HPX/( 8.~^BhWZ,D[_b#u?bYL&^5M&3Q8NF}Q' );
define( 'AUTH_SALT',        'SsZvJQh{7>j$:WpjRFE|nUp%0@<<Y1pVEVR99xXnxHk,B*L(=jmVO#jYwvSMF{if' );
define( 'SECURE_AUTH_SALT', 'uK&}BXT|zp:XP3El(]nW<e^79~|Lxblf1,G+K0V{1&)^Cg#c$]uC/5mC^ucELDyf' );
define( 'LOGGED_IN_SALT',   '*fnDq9XIHw}^;xTE5HiZ1%AtP6Qwz4Op:]|lP@x[5|H{P<Jp9-Lbb{d}eYcr$r*`' );
define( 'NONCE_SALT',       '%TJKH+zoBS#DmC}i*A4bU:X/@]?BT`o{EMiT1NQEyZDa|q?PwA)o5,EB:nXkxL7K' );

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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
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
