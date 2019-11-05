#!/bin/sh

session="work"

tmux start-server

tmux new-session -d -s $session -n vim

tmux selectp -t 1
tmux send-keys "cd ~;nvim -c ':VimwikiIndex'" C-m

tmux splitw -h -p 45
tmux send-keys "neofetch | lolcat" C-m

# Select pane 2 and split vertically by 25%
tmux selectp -t 2
tmux splitw -v -p 75

# select pane 3, set to work directory
tmux selectp -t 3
tmux send-keys "cd ~" C-m

# Select pane 1
tmux selectp -t 1

# create a new sindow called scratch
tmux new-window -t $session:1 -n scratch

# return to main vim window
tmux new select-window -t $session:0

# Finished setup, attach to the tmux session!
tmux attach-session -t $session

