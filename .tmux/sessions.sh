#!/bin/bash

# Development session
if ! tmux has-session -t dev 2>/dev/null; then
    tmux new-session -d -s dev
    
    # Main coding pane split
    tmux split-window -h -t dev
    tmux select-pane -t dev:0.0
    tmux split-window -v -t dev
    
    # Set up working directories and tools
    tmux send-keys -t dev:0.0 'cd ~/projects' C-m 'clear' C-m
    tmux send-keys -t dev:0.1 'cd ~/projects' C-m 'clear' C-m
    tmux send-keys -t dev:0.2 'cd ~/projects' C-m 'clear' C-m
    
fi

# System monitoring session
if ! tmux has-session -t system 2>/dev/null; then
    tmux new-session -d -s system
    
    # System monitoring with htop
    tmux send-keys -t system:0 'htop' C-m
    
    # Split for system stats
    tmux split-window -h -t system
    tmux send-keys -t system:0.1 'neofetch' C-m
    
fi

# Notes session
if ! tmux has-session -t notes 2>/dev/null; then
    tmux new-session -d -s notes
    
    # Main notes window
    tmux send-keys -t notes:0 'cd ~/notes' C-m 'clear' C-m
    
fi

# Spotify session (assuming you're using spotify-tui or similar)
if ! tmux has-session -t spotify 2>/dev/null; then
    tmux new-session -d -s spotify
    
    # Main spotify-tui window
    tmux send-keys -t spotify:0 'spt' C-m  # Replace with your preferred music player command
    
fi

# Dotfiles session
if ! tmux has-session -t dotfiles 2>/dev/null; then
    tmux new-session -d -s dotfiles
    
    # Main dotfiles window
    tmux send-keys -t dotfiles:0 'cd ~/Desktop/dotfiles' C-m 'clear' C-m
    
fi

# Attach to dev session by default if no session is specified
if [ -z "$TMUX" ]; then
    tmux attach-session -t dev
fi
