# TR - Transform Command

Common Transformations
- :upper: Upper case
- :upper: Lower case
- :digit: Digits
- :alnum: Alpha Numeric
- :space: Space ' ' or empty character

Flags
- -c : complements the set of characters in string.i.e., operations apply to characters not in the given set
- -d : delete characters in the first set from the output.
- -s : replaces repeated characters listed in the set1 with single occurrence
- -t : truncates set1

```sh
## Transform characters

echo "commodi est qui accusantium labore aperiam praesentium eum aut ipsum" | tr 'e' '3'

## Transform a -> x, b -> y, c -> z

echo "commodi est qui accusantium labore aperiam praesentium eum aut ipsum" | tr 'abc' 'xyz'


## Transform lowercase to uppercase

echo "commodi est qui accusantium labore aperiam praesentium eum aut ipsum" | tr '[a-z]' '[A-Z]'

## Delete the specified strings or characters

echo "Islamabad is the capital of pakistan" | tr -d 'the'

## Do not change characters mentioned in set 1 by last character from set 2 - Complement Option

echo "Islamabad is the capital of Pakistan" | tr -c 'Pak' 'abc'
```

```sh
## Squezes extra spaces with characters specifies in second set
echo "Hello                      World         ..." | tr -s ' ' 


echo "Hello                      World         ..." | tr -s ' ' '_'
```

```sh
## Removing all non-digit characters
echo "my contact number is 111-222222-3" | tr -c '[:digit:]'

$ echo "My UID is $UID" | tr -cd "[:digit:]\n"
# OR
$ echo "My UID is $UID" | tr -d "a-zA-Z"

## Convert all lower case characters to uppercase characters.
echo 'Linuxize' | tr '[:lower:]' '[:upper:]'
```

```sh
## Put each word in a new linea

echo 'GNU is an operating system' | tr -cs '[:alnum:]' '\n'
echo "My UID is $UID" | tr " "  "\n"

## Remove blank lines 
tr -s '\n' < file.txt > new_file.txt

## Print $PATH directories on a separate line 
echo $PATH | tr  ':' '\n'
```
