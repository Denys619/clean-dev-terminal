#!/usr/bin/env bash

set -e

echo "🚀 Starting Clean Dev Terminal Setup..."

# 1. Update system
echo "🔄 Updating system packages..."
sudo apt update && sudo apt upgrade -y

# 2. Install essential packages
echo "📦 Installing dependencies: zsh, git, curl, tmux, eza, unzip, wget..."
sudo apt install -y zsh git curl tmux eza unzip wget

# 3. Install Alacritty (via cargo)
if ! command -v alacritty &> /dev/null; then
  echo "🖥️ Installing Alacritty..."
  sudo apt install -y cmake libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
else
  echo "✅ Alacritty already installed"
fi

# 4. Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "💡 Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
  echo "✅ Oh My Zsh already installed"
fi

# 5. Install Powerlevel10k
if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
  echo "✨ Installing Powerlevel10k..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
    ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
else
  echo "✅ Powerlevel10k already installed"
fi

# 6. Install zsh plugins
ZSH_PLUGINS="$HOME/.zsh"
mkdir -p "$ZSH_PLUGINS"
if [ ! -d "$ZSH_PLUGINS/zsh-autosuggestions" ]; then
  echo "🔌 Installing zsh-autosuggestions..."
  git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_PLUGINS/zsh-autosuggestions"
fi
if [ ! -d "$ZSH_PLUGINS/zsh-syntax-highlighting" ]; then
  echo "🔠 Installing zsh-syntax-highlighting..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_PLUGINS/zsh-syntax-highlighting"
fi

# 7. Install JetBrainsMono Nerd Font
FONT_DIR="$HOME/.local/share/fonts"
FONT_NAME="JetBrainsMonoNerdFont-Regular.ttf"
if [ ! -f "$FONT_DIR/$FONT_NAME" ]; then
  echo "🔤 Installing JetBrainsMono Nerd Font..."
  mkdir -p "$FONT_DIR"
  wget -qO /tmp/JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
  unzip -q /tmp/JetBrainsMono.zip -d "$FONT_DIR"
  fc-cache -fv > /dev/null
else
  echo "✅ Nerd Font already installed"
fi

# 8. Copy dotfiles
echo "📁 Copying configuration files..."
mkdir -p ~/.config/alacritty
cp ./alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
cp ./tmux/.tmux.conf ~/.tmux.conf
cp ./zsh/zsh/.zshrc ~/.zshrc

# 9. Change default shell to zsh
if [ "$SHELL" != "$(which zsh)" ]; then
  echo "🔁 Changing default shell to Zsh..."
  chsh -s "$(which zsh)"
else
  echo "✅ Default shell is already Zsh"
fi

echo "✅ All done! Please restart your terminal or log out/in to apply changes."
