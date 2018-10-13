# menteer

# requirements

* PHP 5.4.9
    * For MAC:
         * `curl -s https://php-osx.liip.ch/install.sh | bash -s 5.4`
         * `export PATH=/usr/local/php5/bin:$PATH`
    * For Windows:
         * Download from https://windows.php.net/downloads/releases/archives/php-5.4.8-Win32-VC9-x86.zip
         * Extract to `C:\php`
         * Add `C:\php` to your system `PATH` variable
* MySQL 5.1+

# installation instructions

Steps:

1. clone the repository
1. move to server root (if on localhost specify menteer.dev so the index.php defines this as a development install) see index.php for more info
1. (linux) chmod 777 `/application/cache` and `/application/logs`
1. rename `/application/config/config_clean.php` to `config.php` and set the encryption to something unique
    * Search for `$config['encryption_key']`
1. modify `/application/config/database_clean.php` and `email_clean.php` by removing "_clean" from filename
1. create a database schema called `global_herizons` and set it as default
1. initialize the database
    1. run `/sql/setup.sql`
1. configure `database.php` to point to your database
    * `hostname`
    * `username`
    * `password`
    * `database` - `global_herizons`
1. (linux) chmod 777 `/uploads` folder and set "php_value upload_max_filesize 20M" & "php_value post_max_size 21M" in your htaccess
1. ensure `php` is accessible via `PATH`
1. configure `php.ini` (located in the `php` folder):
    1. set `date.timezone = UTC`
    1. set extensions for MySQL:
        1. `extension_dir = "C:\php\ext"`
        1. `extension=php_mysqli.dll`

Optional:

1. default user - > create account and change in user table -> field active to 1 for new user / to make admin see users_groups and insert user with admin group

# running

To run:

```
php -s localhost:8000
```

# features

* mobile friendly and responsive
* database driven (extendable)
* drop and go code-base (minimal setup required)
* PHP 5.4.9
  * **PHP 7+ will not work due to deprecations**
* MySQL 5.1+

# technology stack / open source

* codeIgniter 3.0 - PHP Framework
* ion_auth 2.6 - Authentication Library
* normalize.css v3.0.2 | MIT License | git.io/normalize
* https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css
* https://github.com/sliptree/bootstrap-tokenfield
* Bootstrap v3.3.1 (http://getbootstrap.com)
* jQuery 1.11.1 (jQuery UI, jQuery Carousel Plugin, SmoothScroll Module, JavaScript Custom Forms / Checkbox Module)
* Hammerjs v2.0.4

# security

* XSS (Cross-Site Scripting) Filtering - This filter looks for commonly used techniques to embed malicious JavaScript into your data, or other types of code that attempt to hijack cookies or do other malicious things.
* SQL Injection Protection
* CSRF (Cross-Site Request Forgery) Protection - which is the process of an attacker tricking their victim into unknowingly submitting a request.  Automatically triggered for every non-GET HTTP request.
* Input Validation (All GET AND POST data Cleaned and Validated)
* MySQLi Driver used
* Encrypted URL used when doing sensitive tasks
* Forced SSL/HTTPS
* SMTP (Sendgrid) email ready (out-of-the-box)
* Cloudflare tested and ready

# optional services used

* sendgrid (email STMP) - for sending email
* uservoice - for feedback and user tracking
* google analytics

# road map

* Extending admin to manage database driven questions/questionnaire
* Extending admin control panel
