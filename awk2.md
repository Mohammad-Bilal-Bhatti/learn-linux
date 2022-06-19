## AWK COMMAND BASICS

Overview
- very useful scripting language.
- used to manipulate text and do all kind of things.


We can use awk to create filters and write scripts that accept data from standard input
Chang it in some way (transform-it)
And then send that data back to standard output. 

Generally standard input could be considered as file.
And standard output could be your screen.

We can also chain awk with different commands.


By defult awk sees white space `' '` spaces as delimiters for fileds.

create following file with name `tmnt.txt`
```txt
leonardo blue leader
raphael red hothead
michelangelo orange party-animal
donatello purple geek
```


```sh
# Syntax...
$ awk 'command' file

# Display All File Content.
$ awk '{print}' tmnt.txt

# Display First Column/Field
$ awk '{print $1}' tmnt.txt

# Display Multiple Columns/Fields
$ awk '{print $1,$3}' tmnt.txt

# Displays the permission of all the files in current directory.
$ ls -l | awk '{print $1}'

# Display the last filed. $NF represents Number of Fileds
$ awk '{pring $NF}' tmnt.txt

# Specifying delimiter.
$ awk -F ':' '{print $NF}' /etc/passwd
```
