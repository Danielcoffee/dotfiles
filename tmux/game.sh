#!/usr/bin/env bash

SESSION="game"

# Nếu session đã tồn tại thì attach luôn
tmux has-session -t $SESSION 2>/dev/null

if [ $? != 0 ]; then
  # tạo session mới (detached)
  tmux new-session -d -s $SESSION -n code

  # WINDOW 1: CODE
  tmux send-keys -t $SESSION:code "cd ~/Projects/game-indie/00_playground/day" C-m
  tmux send-keys -t $SESSION:code "nvim *.lua" C-m

  # WINDOW 2: RUN GAME
  tmux new-window -t $SESSION -n run
  tmux send-keys -t $SESSION:run "cd ~/Projects/game-indie/00_playground/day" C-m
  tmux send-keys -t $SESSION:run "love ." C-m

  # quay về window code
  tmux select-window -t $SESSION:code
fi

tmux attach -t $SESSION
