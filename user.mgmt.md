
## User Management

 System Administration Generally Includes
 - User Management
 - Group Management
 - Keeping server uptodate (patching)
 - Regular system backups
 - Set password expiary poilicy

 On Most Distributions
 Normal user accouts that requires id and password for interactive logins - authentication are 
 given userIds greater then or equal to 1000 - Human Accounts

 UserId below 1000 are considered as system accounts.

 System users accounts are useful to schedule automated tasks that doesn't belongs to any user.
 For example corn jobs to generate weekly finentional reporting.

 Generally on most of the distributions user-ids below 1000 do not prompt user for authentication.
 In general system account are not for human-beings

## List Users
```sh
# List homes of every user. - Hack
$ ls -l /home

# List existing users list.
$ cat /etc/passwd
```
[username]:[x]:[UID]:[GID]:[Comment]:[Home directory]:[Default shell]

 List group users
 $ cat /etc/group

[Group name]:[Group password]:[GID]:[Group members] 

 List user passwords hash
 $ cat /etc/shadow

 In shadow file if after user name 
 ! is defined - it means user can't login or user is locked.
 * is defined - it means user can't login to the system.
 
 Jan, 1 1970 E-POCK
 password-hash:
 last-password-changed:
 days-required-to-change-password: '0' means any time 
 days-required-for-password-change: '99999' means infininte time
 days-remainder-for-prompt:
 days-to-lock-account:
 days-to-disable-account:
 :
 
 Skeleton of Home directory.
 /etc/skel

 Count Total users
 $ cat /etc/passwd | wc -l

## Add Users

 $ sudo useradd username

 ## Add user with user personal home.
 $ sudo useradd -m username 

 ## User defined Home path, uid, group-id, and shell.
 $ sudo useradd -m -d /home/custom/path -u 1501 -g 66 -s /bin/bash username



 ## Sets the defaults for user add.
 $ vim /etc/default/useradd

 ## Creting system users.
 $ sudo useradd -r systemuser

## Remove Users

 $ sudo userdel username
 
 ## Remove user account and user home.
 $ sudo userdel -r username

## Change User Passwords

 ## Change logged-in user password
 $ sudo passwd

 ## Change some other password
 $ sudo passwd username

## Set Password Expiary
 
 ## Show Account Aging Information
 chage -l username

 ## Set number of days since Jan, 1 1970, when password was changed.
 chage -d 2018-02-11 username

 ## Set password expiary since Jan, 1 1970
 $ chage -E 2018-02-11 username

 $ usermod --expiredate 2014-10-30 tecmint

 ## Set Number of days of warning before a password chage is required.
 chage -W 10 username
 
 ## Set Inactive days after password has expired.
 chage -I 2 username

## Lock and Unlocking user account

 $ usermod -L username
 $ passwd -l username

 ## Lock the user.
 $ sudo usermod --lock tecmint

Unlock the user
```sh
$ usermod --unlock tecmint
```

NOTE: This will add ! mark in the second column of /etc/passwd

unlock locked user
```sh
$ usermod -U username 
```

Expire user account
```sh
chage -E 0 username
```

Changing user shell
```sh
$ usermod -s /sbin/nologin username
```
check user account is locked or not
```sh 
$ passwd --status username
```

List the groups in which user belongs to.
```sh
$ sudo groups tecmint
```

Add user to Group
```sh
$ sudo usermod --append --groups root,users tecmint
$ sudo usermod -aG root,sudo techmint
```

Change user home directory
```sh
$ sudo usermod --home /tmp tecmint
```

## References
- [lock-or-disable-user-account](https://www.thegeekdiary.com/unix-linux-how-to-lock-or-disable-an-user-account)
