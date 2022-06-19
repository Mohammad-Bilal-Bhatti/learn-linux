## XArgs Command Fundamentals


- One the most important utility
- It allows to take standard input and pass it to next command as arguments... similar to grep, sed, awk, cut
- some commands do not support piping. like echo, ls, find and so on...


syntax: `commandA | xargs commandB`


meaning: std-output of 'commandA' is supplied to 'commandB' in the from of arguments.


example:
```sh
$ seq 5 | xargs echo

# or simply

$ seq 5 xargs
```

### prints the output of ls command as arguments to echo

```sh
$ ls | xargs -t
```


```sh
# cut the file /etc/passwd using delimiter ':' and grep the field-1, sort-it, and pass it to xargs.
# list all users on system listed alphabatically.
$ cut -d: -f1 < /etc/passwd | sort | xargs
```

### using placeholders

```sh
$ ls | xargs -I {} echo "/home/user/{}"

# You can use any placeholders as well...
$ ls | xargs -I xxxx echo "/home/user/xxxx"
```

### creating 1000 .txt files in one go

```sh
$ seq 1000 | xargs -I {} touch {}.txt

# changing extension of existing 1000 files.
$ ls | cut -d. -f1 | xargs -I {} mv {}.txt {}.mp3
```

### maximum number of arguments - will execute one argument at a time.
```sh
$ ls | xargs -t -n 1

$ seq 5 | xargs -n 1 bash -c 'echo $0'

# maximum number of processes at a time.
$ seq 5 | xargs -n 1 -P 1 bash -c 'echo $0; sleep 1'


$ find foo -type f -name "*.txt" -exec rm {} \;
$ find foo -type f -name "*.txt" | xargs -I {} rm {}
```