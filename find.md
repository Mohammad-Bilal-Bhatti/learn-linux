## Using find command

```sh
# Type d = directory | f = file
$ find <search-path> -type <d|f> -name <name-search-pattern>

```

Search script...

```sh
#!/bin/bash

sp="/mnt/d"; # Search Path
dst=~; # Copy Destination Directory
fsp="*.txt" # File Search Pattern
tsp="^import" # Text Search Pattern
md=6 # Look x directories in depth


find ${sp} -maxdepth ${md} -type f -name ${fsp} -exec grep -li ${tsp} {} ';' -exec cp {""} ${dst} ';' >/dev/null 2>/dev/null

```
