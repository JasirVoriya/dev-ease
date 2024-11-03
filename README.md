# 自动化环境设置脚本

## 语言选择 / Language Selection

[中文](REAEME.md) | [English](README.en.md)

## 概述

该脚本用于在基于 Debian 的 Linux 系统上自动安装和配置开发环境，主要包括 Zsh、Oh My Zsh、Zsh 插件、Powerlevel10k 主题、Neovim 及其插件管理器 Lazy.nvim。它旨在简化开发者的环境搭建过程，提供更为高效和个性化的命令行体验。

## 特性

- **自动安装必备软件**：自动更新包列表并安装 Zsh、Git、GCC 和 Curl。
- **Oh My Zsh 安装**：轻松安装和配置 Oh My Zsh。
- **Zsh 插件管理**：安装 zsh-autosuggestions 和 zsh-syntax-highlighting 插件，并将其添加到 Zsh 配置中。
- **Powerlevel10k 主题**：下载并配置 Powerlevel10k 主题，增强 Zsh 终端的视觉效果。
- **Neovim 安装**：安装 Neovim 编辑器，并设置环境变量。
- **Lazy.nvim 插件管理**：安装 Lazy.nvim 用于高效管理 Neovim 插件。

## 使用方法

1. **下载脚本**：
   将仓库clone到本地：

   ```bash
   git clone git@github.com:JasirVoriya/dev-ease.git
   cd ./dev-ease
   ```

   

2. **赋予执行权限**：
   在终端中执行以下命令：

   ```bash
   chmod +x install.sh
   ```

3. **运行脚本：** 
   以 root 用户或使用 sudo 权限运行脚本：

   ```bash
   sudo ./install.sh
   ```

4. **按照提示操作：** 
   脚本会提示用户进行一些确认操作，按任意键继续。

## 函数说明

- **`replace_line_by_prefix`**：根据给定的前缀替换文件中的行内容。
  - **参数**：
    - `prefix`：要替换的行前缀。
    - `replacement`：替换后的内容。
    - `file`：目标文件路径。

- **`wait_for_keypress`**：等待用户按下任意键，继续执行脚本。

## 依赖

- 需要在支持 `apt` 包管理器的 Linux 系统上运行。
- 脚本中使用了 `curl`、`git` 和 `tar` 命令。

## 注意事项

- 确保你有足够的权限执行安装操作，建议以 root 用户或使用 sudo 执行。
- 安装过程中，脚本将修改 `~/.zshrc` 文件，请在运行前备份该文件。
- 安装完成后，运行 Zsh 来配置主题，并随后运行 Neovim 初始化 Lazy.nvim。

## 许可证

本项目遵循 MIT 许可证。有关详细信息，请查看 [LICENSE](LICENSE) 文件。
