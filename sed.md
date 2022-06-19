# Sed Command

- SED stands for stream editor
- One of the important linux command line utility.
- Used to filter and transfor text based on patterns.
- Could be used as find and replace utility.


`cheat.sh` and `tldr.sh` are two important web-pages to find some common practical and useful commands that are used regularly

### tldr pages.

```sh
# Substitution
$ sed 's/find-text/replace-text/' < input.file > output.file

# Global substitution
$ sed 's/find-text/replace-text/g' < input.file > output.file

# piping into sed command.
$ echo "Bilal Bhatti" | sed 's/Bilal/Billu/'

# find and replace on same file.
$ sed -i 's/find/replace/g' ./input/file.txt

# find and replace 2 patterna at a time
$ echo "find1 find2" | sed -e 's/find1/replace1/' -e 's/find2/replace2'

# use different delimiter - you can use any delimiter you want as far as it is same.
$ sed -i 's#find#replace#g' ./input/file.txt

# print only that matches certain pattern ~ grep
$ cat /etc/shells | sed -n '/usr/p'

# delete extra spaces form files.
$ sed -i 's/ *$//' ./file/input.txt

# delete empty lines
$ cat file.txt | sed '/^$/d'

# cappatilize the letter.
$ sed 's/[a-z]/\U&/g' ./input/file.txt

# lowercase the letter
$ sed 's/[A-Z]/\L&/g' ./input/file.txt

# limit n lines
$ sed 11q ./file/input.txt
```