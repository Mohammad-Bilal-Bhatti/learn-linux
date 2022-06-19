## AWK command

- One of the important command line utility
- Text processing utility.
- Used for grebbing columns, fields, rows...
- search for certain strings and patterns in the text.


Note: awk treets spaces white space `' '` as column delimiter

examples...
```sh
# print the first column
$ ps | awk '{print $1}'


# field seperator
$ awk -F ":" '{print $1" "$6" "$7}' /etc/passwd


# different
$ awk 'BEGIN{FS=":"; OFS="-"} {print $1,$6,$7}' /etc/passwd

# search and print last column
$ awk -F "/" '/^\// {print $NF}' /etc/shells 

# print unique shells and list alphabatically
$ awk -F "/" '/^\// {print $NF}' /etc/shells | uniq | sort

$ df | awk '/^\/dev\/loop/ {print $1"\t"$2"\t"$3}'

$ awk 'length($0) > 7' /etc/shells

$ ps -ef | awk '{ if($NF == "/bin/bash" ) print $0}'

$ awk 'BEGIN{ for(i=1;i<=10;i++) print "The square root of", i, "is", i*i;}'

$ awk '$1 ~ /^[b,c]/ print{ $0}' ~/.bashrc

$ awk '{print substr($0, 4)}' ./positions.txt

$ awk 'match($0, /o/) {print $0 "has \"o\" characters at " RSTART"}' ./positions.txt

$ df | awk 'NR==7, NR==12 {print NR, $0}'

$ awk 'END {print NR}' /etc/shells
```
