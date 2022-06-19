# System CTL Command

The whole point of systemd among many others
is to help you in managing what is currently
running on your machine | workstations.

NOTE: systemctl/systemd consider/thinks services as units - KEEP THIS IN MIND.

System ctl is followed by many linux distros.
- debian
- fedora
- ubantu
- mint
- rock
- opensusa
- centos
- Arch
- OpenSusa
- SusaEnterprice
- etc...

## Examples

```sh
# installing apache server. - Debian based or Centos
$ sudo apt install apache2

# installing apache server. - Arch or Fedora
$ sudo dnf install httpd
```

Check if either the server is running already or not.
1. Go to browser
2. Type http://localhost
3. Hit Enter.

```sh
# list all system services/units running in bg.
$ systemctl

# check the service status
$ systemctl status apache2
```

Note: disabled units do not automatically starts when the system boots up.

```sh
# enable system service - auto start when system boots up.
$ sudo systemctl enable apache2

# start the service
$ sudo systemctl start apache2


# disable firewall on fedora or arch in order to run server.
# because by default on above systems they block ports by default.
$ sudo firewall-cmd --zone=public --permanent --add-service=http

# stop the service
$ sudo systemctl stop apache2

# disable the service
$ sudo systemctl disable apache2

# enable and start the service
$ sudo systemctl enable --now apache2

## Sync-Thing Amazing utitity to synchronize files between two or more systems.
## Runs on port :8384

# installing syncthing
sudo apt install syncthing 

# checking the status of the service - in context with user.
$ systemctl status syncthing@jay

# enable the syncthing and start it.
$ systemctl enable --now syncthing@jay

# list systemd unit files
$ ls /usr/lib/systemd/system

# open unit/service file.
$ nano nginx.service
    
# gracefull way of listing system services
$ systemctl list-unit-files --type=service

# restart service
$ systemctl restart apache2

# reload configuration
$ systemctl reload apache2

# list systemd units
$ systemctl list-units

# list services
$ systemctl list-units | grep .service
```

NOTE: YOU CAN START AND STOP THE SERVICE USING systemctl BECAUSE ITS .service FILE IS PRESENT IN `/usr/lib/systemd/system`

```sh
# list the failed services when your computer starts up.
systemctl --failed

# check ssh is enabled or not.
$ systemctl is-enabled ssh
```

One use-case is that when you usually disable cirtical services and enable then when necessary such as ssh...
