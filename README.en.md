# Automated Environment Setup Script

## 语言选择 / Language Selection

[中文](REAEME.md) | [English](README.en.md)

## Overview

This script automates the installation and configuration of a development environment on Debian-based Linux systems, primarily including Zsh, Oh My Zsh, Zsh plugins, the Powerlevel10k theme, Neovim, and its plugin manager Lazy.nvim. It aims to simplify the environment setup process for developers, providing a more efficient and personalized command-line experience.

## Features

- **Automatic installation of essential software**: Automatically updates the package list and installs Zsh, Git, GCC, and Curl.
- **Oh My Zsh installation**: Easily installs and configures Oh My Zsh.
- **Zsh plugin management**: Installs the zsh-autosuggestions and zsh-syntax-highlighting plugins and adds them to the Zsh configuration.
- **Powerlevel10k theme**: Downloads and configures the Powerlevel10k theme to enhance the visual appearance of the Zsh terminal.
- **Neovim installation**: Installs the Neovim editor and sets up environment variables.
- **Lazy.nvim plugin management**: Installs Lazy.nvim for efficient management of Neovim plugins.

## Usage Instructions

1. **Download the script**: Clone the repository to your local machine.

   ```bash
      git clone git@github.com:JasirVoriya/dev-ease.git
      cd ./dev-ease
   ```

2. **Grant execution permissions**: Execute the command to grant permissions.

   ```bash
      chmod +x install.sh
   ```

3. **Run the script**: Run the script as the root user or with sudo privileges.

   ```bash
      chmod +x install.sh
   ```

4. **Follow the prompts**: The script will prompt the user for confirmation at various stages; press any key to continue.

## Function Descriptions

- **`replace_line_by_prefix`**: Replaces lines in a file based on a given prefix.
  - **Parameters**:
    - `prefix`: The prefix of the lines to be replaced.
    - `replacement`: The content to replace with.
    - `file`: The path to the target file.

- **`wait_for_keypress`**: Waits for the user to press any key to continue executing the script.

## Dependencies

- This script requires a Linux system that supports the `apt` package manager.
- It uses the `curl`, `git`, and `tar` commands.

## Notes

- Ensure you have sufficient permissions to perform the installation; it is recommended to run as the root user or with sudo.
- During installation, the script will modify the `~/.zshrc` file; please back up this file before running.
- After installation, run Zsh to configure the theme, and then run Neovim to initialize Lazy.nvim.

## License

This project is licensed under the MIT License. For more details, please see the [LICENSE](LICENSE) file.
