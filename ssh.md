## Open-SSH

### What is Open-ssh.

- Open ssh is a remote management tool, that gives you access to run commands on other machine.
- Open ssh is developed by OpenBSD project
- It is closest thing to a standard for remote access we have in the linux community.
- It is a suite of utilities, the most important of which are the server and client components.
- It uses PORT 22 by default.

### Connecting to a server via Openssh.

Connection Format
```
$ ssh username@ipaddress
```
Example
```
$ ssh root@10.0.70.64
```

File that keeps track of all of the connected devices.
```
~/.ssh/known_hosts
```

File that logs the authentication to the machine.
```
/var/log/auth.log
```


### Configuring the Openssh client.

```$ touch ~/.ssh/config``` # create a file in ~/.ssh with name config
```config

Host myserver
    Hostname 10.0.70.64
    Port 22
    User root
```

See,
How easy is that
```
$ ssh myserver
```

### Using public and private keys.

A recommended security approch to connect to server is to disable password authentication and use private-public ssh keys to connect. 

used to generate ssh keys.
```
$ ssh-keygen
```

> Note: passphrase on keys add additional layer of security to your keys. Because if someone steal you keys he/she can easilly login to secure server. RECOMMENDED

After generating the keys: private and public. Copy the public key to the remote server inside ```~/.ssh/authorized_keys```

is the file which contains list of public keys, each written on seperate line.
```
~/.ssh/authorized_key
```

If you want to actually see what is going on behind the scene run the following command.
```
$ ssh -v myserver
```


#### Easy way of copying public keys to the remote server.

Following is the dedicated command to copy public keys to the remote servers.
```
$ ssh-copy-id -i ./.ssh/id_rsa.pub root@10.0.70.64
```

### Managing SSH keys.
```
$ ssh-keygen -t ed25519 -C "bankalfa"
```

- 't' represents type of algorithm.
- C represents comment

```
$ ssh -i ~/.ssh/acme_id_ed25519 root@10.0.70.64
```

ssh agent is used to skip the passphase enterance everytime you connect to the server.
Activate the ssh agent manually.
```
$ eval $(ssh-agent)
```

Add private key to the cache, and prompt you to enter your passphrase.
```
$ ssh-add ~/.ssh/acme_id_ed25519
``` 

### Configuring Server Component of Openssh

is the service for the server component of the openssh framework.
```
$ which sshd
``` 

Show the status of the ssh server deamon
```
$ systemctl status sshd
```

Enable ssh server component on debian based distributions.
```
$ systemctl enable ssh
```

is the directory which saves the host keys that connect to it.
```
/etc/ssh/
``` 

You can notice here that in this directory ssh_config file is already present. It is because it stores the global configuration of the ssh-client config. Along with it you see sshd_config file for configuring ssh server component.

Interested File
```
/etc/ssh/sshd_config
``` 

- Port 2222
- PasswordAuthentication no
- PermitRootLogin no

```sh
# Restart after change in configuration
$ systemctl restart sshd  

$ ssh -p 2222 root@10.0.70.64
```

It is good security practice for linux adminstrators it to disable password authentication and enable public-private key authentication.
