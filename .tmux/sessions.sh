#!/bin/bash

# Error handling
set -e

# Check if tmux is installed
if ! command -v tmux >/dev/null 2>&1; then
  echo "tmux is not installed. Please install it first."
  exit 1
fi

if ! tmux has-session -t pane-1 2>/dev/null; then
  tmux new-session -d -s pane-1

  tmux rename-window -t pane-1:0 'window-1'
  tmux send-keys -t pane-1:0 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-1:1 -n 'window-2'
  tmux send-keys -t pane-1:1 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-1:2 -n 'window-3'
  tmux send-keys -t pane-1:2 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-1:3 -n 'window-4'
  tmux send-keys -t pane-1:3 'cd ~/' C-m 'clear' C-m

  tmux select-window -t pane-1:0
fi

if ! tmux has-session -t pane-2 2>/dev/null; then
  tmux new-session -d -s pane-2

  tmux rename-window -t pane-2:0 'window-1'
  tmux send-keys -t pane-2:0 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-2:1 -n 'window-2'
  tmux send-keys -t pane-2:1 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-2:2 -n 'window-3'
  tmux send-keys -t pane-2:2 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-2:3 -n 'window-4'
  tmux send-keys -t pane-2:3 'cd ~/' C-m 'clear' C-m

  tmux select-window -t pane-2:0
fi

if ! tmux has-session -t pane-3 2>/dev/null; then
  tmux new-session -d -s pane-3

  tmux rename-window -t pane-3:0 'window-1'
  tmux send-keys -t pane-3:0 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-3:1 -n 'window-2'
  tmux send-keys -t pane-3:1 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-3:2 -n 'window-3'
  tmux send-keys -t pane-3:2 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-3:3 -n 'window-4'
  tmux send-keys -t pane-3:3 'cd ~/' C-m 'clear' C-m

  tmux select-window -t pane-3:0
fi

if ! tmux has-session -t pane-4 2>/dev/null; then
  tmux new-session -d -s pane-4

  tmux rename-window -t pane-4:0 'window-1'
  tmux send-keys -t pane-4:0 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-4:1 -n 'window-2'
  tmux send-keys -t pane-4:1 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-4:2 -n 'window-3'
  tmux send-keys -t pane-4:2 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-4:3 -n 'window-4'
  tmux send-keys -t pane-4:3 'cd ~/' C-m 'clear' C-m

  tmux select-window -t pane-4:0
fi

if ! tmux has-session -t pane-5 2>/dev/null; then
  tmux new-session -d -s pane-5

  tmux rename-window -t pane-5:0 'window-1'
  tmux send-keys -t pane-5:0 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-5:1 -n 'window-2'
  tmux send-keys -t pane-5:1 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-5:2 -n 'window-3'
  tmux send-keys -t pane-5:2 'cd ~/' C-m 'clear' C-m

  tmux new-window -t pane-5:3 -n 'window-4'
  tmux send-keys -t pane-5:3 'cd ~/' C-m 'clear' C-m

  tmux select-window -t pane-5:0
fi

# Attach to 1-dev session by default if no session is specified
if [ -z "$TMUX" ]; then
  tmux attach-session -t pane-1
fi
