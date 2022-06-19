# Getting Started with TMUX - TMUX Essentials.

TMUX is recommended for system users for various reasons.
- If connection lost at some point in time while ssh it will resume from where you left it.
- Preserve the session state.

NOTE: Tmux sessions will be preserved until the system reboots.

```sh
## Install
$ sudo apt install tmux

## Split the window vertically
$ ctrl + b + %

## Split the window horizontally
$ ctrl + b + "
```

```sh
## move between windows
$ ctrl + b + [left][right][up][down]

## create new window
$ ctrl + b + c

## switch between windows
$ ctrl + b + n

## where n: is any whole number.

## naming window
$ ctrl + b + ,

## detetch session
$ ctrl + b + d

## list tmux sessions.
$ tmux ls

## reattatch to the detatched sesstion
$ tmux attach -t [[session-name][session-id]]

## rename the sessions.
$ tmux rename-session -t <id> <name>

## create session with name
$ tmux new -s <session-name>

## deleting sessions
$ tmux kill-session -t <target>
```

### Equivalent Tool
- screen
