# Swiss Army Knief Commands For Bash

```sh
## Find and replace with pattern.
find . -type f -exec sed -i 's/foo/bar/g' {} +
```

```sh
## Find files with pattern.
grep -rnw '/path/to/somewhere/' -e 'pattern'
```

```sh
## List the directory and files sorted by last modified date-time decending.
ls -ltr
```

```sh
grep -rnwl './' -e 'gateway.tapsys.net'

find . -type f -exec sed -i 's/gateway.tapsys.net/staginggateway.tapsys.net/g' {} +
```
