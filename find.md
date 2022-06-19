## Find Command - Linux Essentials.

> Use find command when you can't find thing on my system.

synopsis
$ find search-path [-name search-pattern]

Filter 
$ find search-path [-name search-pattern] | grep -v .cache

Filter by type of file. Directory | File
$ find search-path [-type [d|f]] [-name search-pattern]

Execute command against every item form the results
{} - Placeholder of every item
+  - Terminator for the exec command.
\; - Terminator for the exec command.
$ find search-path [-name search-pattern] [-exec command {} +]

Use-case of find command

### Change the permissions of the Pictures directory to rw only to user.
$ chmod -R 600 Pictures

The problem with the above command.

What happens is that it also apply permissions to the Directory itself which causes un-able to cd to that directory.

Because if directory permission string didn't have execute bit - It enforce not to cd to that directory.

Solution.

use find command.

$ find Pictures -type f -  exec chmod 600 {} /;

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
