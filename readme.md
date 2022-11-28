This playbook will create  Ubuntu machine WP+PHP8.1
A virtualhost will be created with the options specified in the `vars/default.yml` variable file.
- `mysql_password`: the password for the MySQL root account. Default: "mysql_root_password"
- `http_host`: your domain name. Must be set!!!!!
- `http_conf`: the name of the configuration file that will be created within nginx. Default M2.conf



Quick Steps:

shell
nano vars/default.yml
```
---
mysql_root_password: "mysql_root_password"
http_host: "your_domain" -- !!!Need change to real path!!!
http_conf: "your_domain.conf"
```

Run the Playbook

```command
ansible-playbook -l [target] -i [inventory file] -u [remote user] playbook.yml
```
Script install php7.4, Nginx with config for WP, create databse wp_base and grant all needed. Also Install certbot and run it.
Default setting:
DB Name: wp_base
DB Host: localhost
DB_user: db_user
DB_pass: mysql_root_password

