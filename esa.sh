#!/bin/bash
# Create a tmux session for my esa workflow

SESSION_NAME="esa"
WINDOW_NAMES=("Ciarc" "Images" "ssh-Console")
# Prepend space before cmd to not put them into history
STARTUP_CMDS=(" cd ~/Desktop/esa/CIARC/" \
            " cd ~/Desktop/esa/CIARC/logs/melvonaut/images/" \
            " ssh console")


# Check if the session already exists
tmux has-session -t $SESSION_NAME 2>/dev/null

if [ $? != 0 ]; then
    # Create a new tmux session + first window
    tmux new-session -d -s $SESSION_NAME -n "${WINDOW_NAMES[0]}"
    tmux send-keys -t $SESSION_NAME:1 "${STARTUP_CMDS[0]}" C-m
  
    # Create other windows  
    for ((i=1; i<${#WINDOW_NAMES[@]}; i++)); do
        tmux new-window -t $SESSION_NAME -n "${WINDOW_NAMES[i]}"
        tmux send-keys -t $SESSION_NAME:$((i+1)) "${STARTUP_CMDS[i]}" C-m
    done

fi

# Select the first window to start in it
tmux select-window -t $SESSION_NAME:1

# Attach to the session
tmux attach-session -t $SESSION_NAME

# There is still a bug in my tmux.conf with window names, reloading it fixed it
# wait for 1s then reloading config. & is for nonblocking of this line
(sleep 1 && tmux source-file ~/.config/tmux/tmux.conf) &