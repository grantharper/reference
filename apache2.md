# Apache 2 

## Ubuntu

Public directory
`/var/www`

Config directory
`/etc/apache2`

Modification of config should be done using the already provided config files and the helpers

* `a2enmod` or `a2dismod`
* `a2ensite` or `a2dissite`
* `a2enconf` or `a2disconf`

Enable proxy

* `sudo a2enmod proxy` -proxy module in general
* `sudo a2enmod proxy_http`-for http
* `sudo a2enmod proxy_balancer` -allows specification of the `<Proxy balancer://cluster>` section with `BalancerMember`s
* `sudo a2enmod lbmethod_byrequests` -allows for load balancing

Enable SSL

* `sudo a2enmod ssl`
* `sudo a2ensite default-ssl`
* `sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout <path-to-key> -out <path-to-cert>`

* Add to `/etc/apache2/sites-enabled/default-ssl.conf` the following
* `ServerName example.com:443`
* `SSLCertificateFile <path-to-cert>`
* `SSLCertificateKeyFile <path-to-key>`
