# My Linux Dotfiles

## 🖥️ Environment Overview

These dotfiles configure my personal Linux development and desktop environment, focusing on i3 window manager, Zsh, Neovim, and other productivity tools.

## 📂 Repository Structure

- `.zshrc`: Zsh shell configuration
- `.zshrc.pre-oh-my-zsh`: Pre-Oh My Zsh configuration
- `.i3status.conf`: i3status bar configuration
- `.config/`:
  - `alacritty/`: Alacritty terminal emulator settings
  - `i3/`: i3 window manager configuration
  - `nitrogen/`: Wallpaper management settings
  - `nvim/`: Neovim configuration
  - `picom.conf`: Picom (X11 compositor) configuration
- `.zsh/zsh-autosuggestions/`: Zsh autosuggestions plugin

## 🛠️ Key Tools and Applications

- **Window Manager**: i3
- **Terminal**: Alacritty
- **Shell**: Zsh (with Oh My Zsh)
- **Text Editor**: Neovim
- **Compositor**: Picom
- **Wallpaper Manager**: Nitrogen

## 🚀 Installation

### Prerequisites

- Git
- Zsh
- Oh My Zsh
- Neovim
- i3 window manager
- [Recommended] GNU Stow

### Installation Methods

#### Option 1: Manual Symlinks

```bash
git clone https://github.com/[YOUR-USERNAME]/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Manually create symlinks
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.i3status.conf ~/.i3status.conf
ln -sf ~/.dotfiles/.config/nvim ~/.config/nvim
ln -sf ~/.dotfiles/.config/i3 ~/.config/i3
ln -sf ~/.dotfiles/.config/alacritty ~/.config/alacritty
# Add more symlinks as needed
```

#### Option 2: Using GNU Stow (Recommended)

```bash
# Install Stow (Debian/Ubuntu)
sudo apt-get install stow

# Install Stow (Arch Linux)
sudo pacman -S stow

# Clone the dotfiles repository
git clone https://github.com/[YOUR-USERNAME]/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Stow will create symlinks for all files in the directory
# Note: Use --adopt flag to move existing files into the repo if needed
stow zsh      # Symlink Zsh configurations
stow i3       # Symlink i3 configurations
stow nvim     # Symlink Neovim configurations
stow alacritty # Symlink Alacritty configurations

# To simulate and check what stow will do before actually doing it
stow -n zsh   # Dry run for Zsh configurations
```

#### Stow Tips
- Each subdirectory should mirror your home directory structure
- Stow ignores `.git` and other special directories
- Use `-v` for verbose output
- Use `-D` to delete symlinks

## 🔧 Customization

Feel free to explore and modify the configurations to suit your workflow. Each configuration file is commented to help you understand and adapt them.

## 💡 Features

- Consistent development environment setup
- Efficient window management with i3
- Enhanced shell experience with Zsh and autosuggestions
- Customized Neovim configuration
- Flexible dotfiles management with Stow

## 🤝 Contributing

Suggestions and improvements are welcome! 
- Fork the repository
- Create a feature branch
- Commit your changes
- Open a pull request

## 🔗 Additional Resources

- [GNU Stow Manual](https://www.gnu.org/software/stow/manual/stow.html)
- [Dotfiles Management with Stow](https://www.linuxjournal.com/content/managing-dot-files-stow)
