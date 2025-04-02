#!/bin/bash

# Error handling
set -e

# Check if tmux is installed
if ! command -v tmux >/dev/null 2>&1; then
  echo "tmux is not installed. Please install it first."
  exit 1
fi

# 1-development session
if ! tmux has-session -t 1-dev 2>/dev/null; then
  tmux new-session -d -s 1-dev

  tmux rename-window -t 1-dev:0 'main'
  tmux send-keys -t 1-dev:0 'cd ~/Desktop/projects/' C-m 'clear' C-m

  tmux new-window -t 1-dev:1 -n 'Udemy'
  tmux send-keys -t 1-dev:1 'cd ~/Desktop/projects/Udemy/' C-m 'clear' C-m

  tmux new-window -t 1-dev:2 -n 'Websure'
  tmux send-keys -t 1-dev:2 'cd ~/Desktop/projects/Websure/' C-m 'clear' C-m

  tmux new-window -t 1-dev:3 -n 'Personal'
  tmux send-keys -t 1-dev:3 'cd ~/Desktop/projects/Personal/' C-m 'clear' C-m

  tmux select-window -t 1-dev:0
fi

# 2-workspace session
if ! tmux has-session -t 2-workspace 2>/dev/null; then
  tmux new-session -d -s 2-workspace

  tmux rename-window -t 2-workspace:0 'notes'
  tmux send-keys -t 2-workspace:0 'cd ~ 2>/dev/null || mkdir -p ~/' C-m 'clear' C-m

  tmux new-window -t 2-workspace:1 -n 'workspace-1'
  tmux send-keys -t 2-workspace:1 'cd ~' C-m 'clear' C-m

  tmux new-window -t 2-workspace:2 -n 'workspace-2'
  tmux send-keys -t 2-workspace:2 'cd ~' C-m 'clear' C-m

  tmux select-window -t 2-workspace:0
fi

# 3-dotfiles session
if ! tmux has-session -t 3-dotfiles 2>/dev/null; then
  tmux new-session -d -s 3-dotfiles

  tmux rename-window -t 3-dotfiles:0 'dotfiles'
  tmux send-keys -t 3-dotfiles:0 'cd ~/Desktop/dotfiles 2>/dev/null || mkdir -p ~/Desktop/dotfiles' C-m 'clear' C-m
fi

# Attach to 1-dev session by default if no session is specified
if [ -z "$TMUX" ]; then
  tmux attach-session -t 1-dev
fi
