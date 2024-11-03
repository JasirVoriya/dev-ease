# 替换文件内容函数
replace_line_by_prefix() {
  local prefix="$1"      # 第一个参数：前缀
  local replacement="$2" # 第二个参数：替换内容
  local file="$3"        # 第三个参数：文件名

  # 使用 sed 执行替换
  sed -i "/^$prefix/c\\$replacement" "$file"
}
wait_for_keypress() {
  local msg="$1"
  read -n 1 -s -r -p "$msg，按任意键继续..."
  echo # 输出一个换行符
}

apt update
# 安装zsh、git、gcc
apt install zsh git gcc curl

# 安装ohmyzsh
wait_for_keypress "开始安装ohmyzsh"
printf "y\nexit\n" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "ohmyzsh安装完成，"
# 安装zsh插件
wait_for_keypress "开始安装zsh插件：zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
wait_for_keypress "开始安装zsh插件：zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
replace_line_by_prefix \
  "plugins=(" \
  "plugins=(git web-search jsontools z vi-mode zsh-syntax-highlighting zsh-autosuggestions)" \
  "$HOME/.zshrc"

echo "zsh插件安装完成，第三方插件如下："
ls -alt ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins -alt | grep -e "zsh-autosuggestions" -e "zsh-syntax-highlighting"

# 安装p10k主题
wait_for_keypress "开始安装p10k主题"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
replace_line_by_prefix \
  'ZSH_THEME="' \
  'ZSH_THEME="powerlevel10k/powerlevel10k"' \
  "$HOME/.zshrc"
echo "p10k主题安装完成："
ls -alt ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes | grep powerlevel10k

# 安装Neovim
wait_for_keypress "开始安装Neovim"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
rm -rf /opt/nvim
tar -C /opt -xzf nvim-linux64.tar.gz
echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >>~/.zshrc
echo "Neovim安装完成"

# 安装lazy.nvim
wait_for_keypress "开始安装lazy.nvim"
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

echo "安装完成！"
echo "运行zsh，来配置你的zsh主题！"
echo "配置完成后，再运行nvim，来初始化你的lazy.nvim"
