#!/bin/bash
# Create a tmux session for my esa workflow

SESSION_NAME="esa"
WINDOW_NAMES=("Ciarc" "Helper" "ssh-Console")
# Prepend space before cmd to not put them into history
FIRST_WINDOW_CMDS=(" cd ~/Desktop/esa/CIARC/" \
                    " code .")
SECOND_WINDOW_CMDS=(" cd ~/Desktop/esa/CIARC/logs/melvonaut/images/" \
                    " cd ~/Desktop/esa/CIARC/" \
                    " poetry run rift-console run-server")
THIRD_WINDOW_CMDS=(" ssh -t console 'cd /shared/testing/CIARC; bash --login'")

# Check if the session already exists
tmux has-session -t $SESSION_NAME 2>/dev/null

if [ $? != 0 ]; then
    # Create a new tmux session + first window
    tmux new-session -d -s $SESSION_NAME -n "${WINDOW_NAMES[0]}"
    tmux send-keys -t $SESSION_NAME:1 "${FIRST_WINDOW_CMDS[0]}" C-m
    tmux send-keys -t $SESSION_NAME:1 "${FIRST_WINDOW_CMDS[1]}" C-m
  

    # Second window
    tmux new-window -t $SESSION_NAME -n "${WINDOW_NAMES[1]}"
    tmux send-keys -t $SESSION_NAME:2 "${SECOND_WINDOW_CMDS[0]}" C-m

    tmux split-window -v -t $SESSION_NAME:2
    tmux send-keys -t $SESSION_NAME:2.2 "${SECOND_WINDOW_CMDS[1]}" C-m
    tmux send-keys -t $SESSION_NAME:2.2 "${SECOND_WINDOW_CMDS[2]}" C-m

    tmux select-window -t $SESSION_NAME:2
    tmux select-pane -t $SESSION_NAME:2.1
    

    # Third window
    tmux new-window -t $SESSION_NAME -n "${WINDOW_NAMES[2]}"
    tmux send-keys -t $SESSION_NAME:3 "${THIRD_WINDOW_CMDS[0]}" C-m
fi

# Select the first window to start in it
tmux select-window -t $SESSION_NAME:1

# Attach to the session
tmux attach-session -t $SESSION_NAME

# There is still a bug in my tmux.conf with window names, reloading it fixed it
# wait for 1s then reloading config. & is for nonblocking of this line
(sleep 10 && tmux source-file ~/.config/tmux/tmux.conf) &