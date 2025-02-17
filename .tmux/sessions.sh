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
  tmux send-keys -t 1-dev:0 'cd ~/projects/adaKsi/ 2>/dev/null || mkdir -p ~/projects/adaKsi/' C-m 'clear' C-m

  tmux new-window -t 1-dev:1 -n 'Udemy'
  tmux send-keys -t 1-dev:1 'cd ~/projects/Udemy/ 2>/dev/null || mkdir -p ~/projects/Udemy/' C-m 'clear' C-m

  tmux new-window -t 1-dev:2 -n 'Websure'
  tmux send-keys -t 1-dev:2 'cd ~/projects/Websure/ 2>/dev/null || mkdir -p ~/projects/Websure/' C-m 'clear' C-m

  tmux select-window -t 1-dev:0
fi

# 2-notes session
if ! tmux has-session -t 2-notes 2>/dev/null; then
  tmux new-session -d -s 2-notes

  tmux rename-window -t 2-notes:0 'quick-notes'
  tmux send-keys -t 2-notes:0 'cd ~/notes/quick-notes 2>/dev/null || mkdir -p ~/notes/quick-notes' C-m 'clear' C-m

  tmux new-window -t 2-notes:1 -n 'todos'
  tmux send-keys -t 2-notes:1 'cd ~/notes/todos 2>/dev/null || mkdir -p ~/notes/todos' C-m 'clear' C-m

  tmux new-window -t 2-notes:2 -n 'documentation'
  tmux send-keys -t 2-notes:2 'cd ~/notes/docs 2>/dev/null || mkdir -p ~/notes/docs' C-m 'clear' C-m

  tmux select-window -t 2-notes:0
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
