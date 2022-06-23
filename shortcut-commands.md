# Linux command line shortcuts that makes your life easy

## Description
Following are the command that makes your life easy as linux user or system adminstrator

```sh
## ============ Shortcut 01 ===============
## navigate from where you left
$ cd /etc/nginx
$ cd /var/log/nginx
## will get you straight from where you jumped/left
$ cd -
## ========================================

## ============ Shortcut 02 ===============
## clear the screen - shortcut
ctrl + l
## ========================================

## ============ Shortcut 03 ===============
## reset your shell - wipes out all txt
$ reset
## ========================================

## ============ Shortcut 04 ===============
## remembers the directory that you were currently in
$ pushd ~/.config
$ cd /temp
## lets you get back to the remembered directory
$ popd 
## ========================================

## ============ Shortcut 05 ===============
## minimize the process in background
ctrl + z
## brings background process to foreground
$ fg
## ========================================

## ============ Shortcut 06 ===============
## reruns last entered command with sudo
sudo !!
## ========================================

## ============ Shortcut 07 ===============
## search part of the command that run in the past
ctrl + r
# by pressing ctrl + r again it will heilight the next matching command and by pressing Enter the command will be executed
# by pressing ctrl + o will bring command out of search
# by pressing enter will execute the selected comand
# by pressing ctrl + g will close the search without doing any thing
## ========================================

## ============ Shortcut 08 ===============
## list recently run command history
$ history
## ========================================

## ============ Shortcut 09 ===============
## reruns the command with nunber in history
!32
## ========================================

## ============ Shortcut 10 ===============
## displays the time when the command was last run in the history by setting the environment variable
$ HISTTIMEFORMAT="%Y-%m-%d %T "
$ hsitory

# for making this perminant you can add this environment variable to ~/.bashrc file
# HISTCONTROL is another environment variable used to control sensitive information not to be recorded in history
## ========================================

## ============ Shortcut 11 ===============
$ sudo apt install cmatrix
$ cmatrix
## ========================================

## ============ Shortcut 12 ===============
## clear entire line on terminal
ctrl + u

## brings cursor to begining of the line
ctrl + a

## brings cursor to end of the line
ctrl + e

## brings word after the cursor
ctrl + k

## brings word before the cursor
ctrl + w

## paste the word erased by either ctrl + w or ctrl + k
ctrl + y
## ========================================


## ============ Shortcut 13 ===============
## run two or more commands one after another
$ echo "Hello world"; ls -la
## ========================================

## ============ Shortcut 14 ===============
## chain command. The next command will run if the previous command is success (return 0)
$ echo "Hello bash" && ls -la
## ========================================

## ============ Shortcut 15 ===============
## watch the file and updates if content of the file changes
$ tail -f /var/log/nginx/access.log
## ========================================

## ============ Shortcut 16 ===============
## empty out the specified file
$ truncate -s 0 var/log/nginx/error.log
## ========================================

## ============ Shortcut 17 ===============
## make output to be placed in the form of columns or tabular format
$ mount | column -t
## ========================================

## ============ Shortcut 18 ===============
## logouts from current ssh session similar to exit
ctrl + d
## ========================================

## ============ Shortcut 19 ===============
## Displays previously executed command from history
ctrl + p
## Display next executed command from history
ctrl + n
## ========================================

```

## References
- https://www.youtube.com/watch?v=AVXYq8aL47Q
- https://www.makeuseof.com/linux-bash-terminal-shortcuts/
- https://www.redhat.com/sysadmin/top-10-shortcuts
- https://linuxhandbook.com/linux-shortcuts/