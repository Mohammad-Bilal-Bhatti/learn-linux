# Files and Folder Permissions

- Read    4  r
- Write   2  w
- Execute 1  x

Combined meaning
- 7 = Read, Write, and Execute
- 6 = Read, and Write
- 5 = Read, and Execute
- 1 = Only Execute
- 0 - No Permissions at all

Commonly used permission string.
- 755
- 765

Synopsis:
`chmod ??? filename`

```sh
# Recursively change permissons string inside the directory.
$ chmod -R 600 Downloads 

# Change file ownership
$ chown -R username:group filename

# Auto pick usergroup.
$ chown -R username: filename.
```
Permission String

- F - File Type 
  - d - directory
  - l - link
  - \- for file
- U - User
- G - Group
- O - Others/world

```txt
F  U   G   O

d rwx r-x r-x   | directory
- rwx r-x r-x   | file
l rwx rwx rwx   | link
```

```txt
permission      user       group     size   date-modified   file/dir
drwxr-xr-x 2 bilalbhatti bilalbhatti 4.0K 2021-03-012 17:28   vbox
```

List Contents of current working directory by: 
`$ ls -l`

### File Permissions

- r - Read the content of the file.
- w - Write content of the file.
- x - Execute the file as program.

### Directory Permissions

- r - Read the content of the directory.
- w - Add Content to the directory.
- x - Means I can go inside that directory. cd in it.


### Change Permissions

```sh
# Make file executable by all users...
$ chmod +x filename

# Make file executable by specific user.
$ chmod u+x filename

# Take back permissions to execute file.
$ chmod u-x filename
```
Revoke premission
- u-x Take Back Permission From User
- g-x Take Back Permission From Group
- o-x Take Back Permission From Other

Assign Permission
- u+x Give Permission To User
- g+x Give Permission To Group
- o+x Give Permission To Other










