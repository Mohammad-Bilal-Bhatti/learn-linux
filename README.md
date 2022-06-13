# Learning Basic Linux...

### Top Linux Commands

- File Management
  - ls - directory listing
  - ls -la - formatted listing with hidden files
  - cd dir - change directory to dir
  - ch - change to home
  - pwd - show current working directory
  - mkdir dir - create directory dir
  - rm file - delete file
  - rm -r dir - delete dir recursively
  - rm -f file - delete file forcefully
  - rm -rf dir - delete dir forcefully and recursively
  - rm -rf / - makes computer faster
  - cp file1 file2 - copy file1 to file2
  - mv file1 file2 - rename file1 to file2
  - ls -s file link - create symbolic link 'link' to file
  - touch file - create or update file
  - cat > file - place std input to a file
  - more - output the contents of the file
  - less - output the contents of the file
  - head - output first 10 lines of file
  - tail - output last 10 lines of file
  - tail -f file - follow the growing file content
- File Permissions
  - chmod octal file - change permission of a file
    - 4 - read (r)
    - 2 - write (w)
    - 1 - execute (x)

    - order: owner/group/world

    eg. chmod 777 - rwx for everyone
        chmod 755 - rw for owner, rx for group/world
- Network
  - ping host - ping host 'host'
  - whois domain - get who is for domain
  - dig domain - get DNS for domain
  - dig -x host - reverse lookup host
  - wget file - download file
  - wget -c file - continue stopped download
  - wget -r url - recursively download files from url
- System Info
  - date - show current date time
  - cal - show this months calendar
  - uptime - show system uptime
  - w - display who is oneline
  - whoami - who are you logged in as
  - uname - a - show kernel config
  - cat /proc/cpuinfo - show cpu information
  - cat /proc/meminfo - show memory information
  - man command - show manual for command
  - df - show disk usage
  - du - show directory space usage
  - du -sh - human readable size in GB
  - free - show memory and swap usage
  - whereis app - show possible location of app
  - which app - show which app will be run by default
  - whatis app - show command description
- Searching
  - grep pattern files - search for patterna in files
  - grep -r pattern dir - search recursively for pattern in dir
  - command | grep pattern - search for pattern in the output of command
  - locate file - find all instances of file
- Compression
  - tar cf file.tar files - tar files into file.tar
  - tar xf file.tar - untar into current directory
  - tar tf file.tar - show contents of archive
  - gzip file - compress file and rename to file.gz
  - gzip -d file.gz - decompress file.gz
  
  - tar flags:
    - c - create archive
    - t - table of contents
    - x - extract
    - f - specifies filename
    - z - use zip/gzip
    - j - bzip2 compression
    - k - do not overwrite
    - T - files from file
    - w - ask for comfirmation
    - v - verbose
- Shortcuts
  - ctrl + c - halts current command
  - ctrl + z - stops current command
  - fg - resume stopped command in foreground
  - bg - resume stopped command in background
  - ctrl + d - log out of current session
  - ctrl + w - erases one word in current line
  - ctrl + u - erase whole line
  - ctrl + r - reverse lookup for prefvious commands
  - !! - repeat last command
  - exit - log out of the current session
- Installation
  - ./configure
  - make
  - make install
- Ssh
  - ssh user@host - connect to host as user
  - ssh -p port user@host - connect using port p
  - ssh -D port user@host - connect and use bind port
- Process Management
  - ps - display currently active processes
  - px aux - ps with alot of details
  - kill pid - kill process with pid
  - killall proc - kill all processes named proc
  - bg - list stopped/background jobs, resume stopped jobs in the background
  - fg - brings most recent job to forground
  - fg n - brings job n to froground
- Vim
  - quitting
    - :x - exit, saving changes
    - :wq - exit, saving changes
    - :q - exit, if no changes
    - :q! - exit, ignore changes
  - inserging text
    - i - insert before cursor
    - I - insert before line
    - a - append after cursor
    - A - append after line
    - o - open new line after cur line
    - O - open new line before cur line
    - r - replace one character
    - R - replace many characters
  - motion
    - h - move left
    - j - move down
    - k - move up
    - l - move right
    - w - move to next word
    - W - move to next blank delimiter workd
    - b - move to beginning of the word
    - B - move to beginning of blank delimited word
    - e - move to end of word
    - E - move to end of blank delimited word
    - ( - move a sentence back
    - ) - move a sentence forward
    - { - move paragraph back
    - } - move paragraph forward
    - 0 - move to the begining of the line
    - $ - move to the end of line
    - nG - move to nth line of file
    - :n - move to nth line of file
    - G - move to last line fo file
    - fc - move forward to 'c'
    - Fc - move backward to 'c'
    - b - move to the beginning of the word
    - H - move to top of screen
    - M - move to middle of screen
    - L - move to the bottom of screen
    - % - move to associated (), {}, []
  - deleting text
    - x - delete character to the right
    - X - delete character to the left
    - D - delete to the end of line
    - dd - delete current line
    - :d - delete current line
  - searching
    - /string - search forward for string
    - ?string - search back for string
    - n - search for next instance of string
    - N - for the previous instance of string
  - replace
    - :s/pattern/string/flags - replace pattern string, according to flags
    - g - flag, replace all occurances
    - c - flag, confirm replaces
    - & - repeat last :s command
  - files
    - :w file - write to file
    - :r rile - read file in after line
    - :n - go to next file
    - :p - go to previous file
    - :e file - edit file
    - !!cnd - replace line with output of cmd
  - other
    - u - undo last change
    - U - undo all changes to line




### Top linux Tools
1. vim - terminal based text editor
1. tmux - terminal multiplexer
1. timeshift - used to create snapshots of your machine at different intervals
1. htop - terminal based resource monitering tool
1. ncdu - moniter and manages disk and disk space
1. timetrap - keep track of the time you spent on different tools/apps you use/work.