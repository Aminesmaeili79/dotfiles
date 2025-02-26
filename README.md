# Dotfiles and Arch Linux Installer

This repository contains my personal dotfiles and a bash script to automate the installation of all my preferred AUR and `pacman` packages on a fresh Arch Linux installation.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Dotfiles Overview](#dotfiles-overview)
- [Package Lists](#package-lists)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

---

## Introduction

This repository is designed to simplify the setup of a new Arch Linux system by providing:
- **Dotfiles**: Configuration files for various tools and applications.
- **Installer Script**: A bash script (`installer.sh`) to install all my preferred AUR and `pacman` packages.

---

## Features

- **Dotfiles**: Includes configurations for:
  - Shell (`zsh`, `oh-my-zsh`, `p10k`)
  - Terminal emulator (`alacritty`)
  - Window manager (`i3`)
  - Text editor (`nvim`)
  - And more!
- **Installer Script**: Automates the installation of:
  - All `pacman` packages listed in `pkglist.txt`.
  - All AUR packages listed in `aurpkglist.txt`.

---

## Installation

### Prerequisites
- A fresh Arch Linux installation.
- `git` installed (`sudo pacman -S git`).

### Steps
1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```
2. Make the installer script executable:
   ```bash
   chmod +x installer.sh
   ```
3. Run the installer script:
   ```bash
   ./installer.sh
   ```

## Usage

### Dotfiles
After running the installer script, the dotfiles need to get linked to your home directory. You can run the following command inside the dotfiles repository:
`stow -t ~/ . `

### Installer Script
The installer script will:
1. Install all `pacman` packages listed in `pkglist.txt`.
2. Install all AUR packages listed in `aurpkglist.txt` using an AUR helper like `yay` or `paru`.

---

## Dotfiles Overview

Here’s a breakdown of the dotfiles included in this repository:

- **Shell**:
  - `.zshrc`: Zsh configuration.
  - `.p10k.zsh`: Powerlevel10k theme configuration.
  - `.oh-my-zsh`: Oh My Zsh framework.
- **Terminal**:
  - `.config/alacritty/alacritty.toml`: Alacritty terminal emulator configuration.
- **Window Manager**:
  - `.config/i3/config`: i3 window manager configuration.
- **Text Editor**:
  - `.config/nvim/init.lua`: Neovim configuration.
- **Other**:
  - `.gitconfig`: Git configuration.
  - `.stow-local-ignore`: Stow ignore rules.
  - `update-pkglists`: Automation for adding changes of the dotfiles and package lists.

---

## Package Lists

- **`pkglist.txt`**: Contains a list of `pacman` packages to install.
- **`aurpkglist.txt`**: Contains a list of AUR packages to install.

---

## Contributing

Contributions are welcome! If you have suggestions or improvements, feel free to:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/YourFeature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Open a pull request.

---

## Contact

If you have any questions or need assistance, feel free to reach out:

- **Email**: aminesmaeili79@yahoo.com

---

Enjoy your fresh Arch Linux setup! 🚀
