# Tmux

A terminal multiplexer.

Features
- Panes
- Windows
- Sessions


command mode: ctrl + b




Sessions:

Sessions are one of the feature of tmux that lets you presist your session details.


1. Create new vertical pane. 
ctrl + b + %

2. Create new horizontal pane.
ctrl + b + " 

3. Navigation between panes
ctrl + b + [left | right | up | down]-arrow

4. Windows - create new one
ctrl + b + c

5. Navigation between windows
ctrl + b + [0-9] , where 0-9 is window number

6. renaming window
ctrl + b + ,

7. moving windows
ctrl + b + .

8. detatch tmux session
ctrl + b + d

9. list active tmux sessions.
tmux ls

10. reattatch to running session
tmux attatch -t <id>

11. renamming sessions
tmux rename-session -t <id> <name>

eg. tmux rename-session -t 0 git

12. named sessions
tmux new -s docker

13. killing session
tmux kill-session -t docker






Bottom Navigator...

        current
          |
[0] 0:bash*
    |   |
  label |
       name

