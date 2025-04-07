## Installation Guide

Zsh (Z Shell) is a powerful and flexible alternative to Bash, offering a wide range of modern features, plugin support, and an enhanced user experience. It forms the foundation of a highly productive terminal environment and integrates perfectly with tools like Oh My Zsh, Powerlevel10k, Tmux, and more.

## 📦 What is Zsh?

Zsh is an extended version of the Bourne Shell (sh) that introduces numerous usability and productivity enhancements:
- **Spelling correction** — auto-correct mistyped commands
- **Command suggestions** — real-time hinting as you type
- **Advanced tab-completion** — intelligent and context-aware completion
- **Plugin and theme support** — easily extend functionality
- **Compatible with Bash scripts** — smooth migration from Bash
- **Customizable prompt** — supports powerful visual themes

Whether you're a beginner or a power user, Zsh provides an intuitive shell with advanced features that save time and reduce friction.

## Check if Zsh is already installed

To verify whether Zsh is already installed on your system, run:
```bash
zsh --version
```
If the command returns a version number (e.g. `zsh 5.8`), you're good to go. Otherwise, follow the instructions below to install it.

## Installation Steps

### Linux (Debian/Ubuntu)
Install Zsh using the official package manager:
```bash
sudo apt update
sudo apt install zsh -y
```

### Set Zsh as Your Default Shell

Once Zsh is installed, you should set it as your default login shell:
```bash
chsh -s $(which zsh)
```
This command changes your default shell. After running it, **log out and log back in** to apply the change.

You can also start Zsh manually by typing:
```bash
zsh
```
> 💡 If `chsh` doesn't work (e.g. in WSL), you can configure `.bashrc` to auto-launch Zsh.

### Final Step: Restart Your Terminal

Once Zsh is installed and set as your default shell, **you must close and reopen your terminal** (or run `exec zsh`) for changes to apply.

### ⚠️ First-Time Zsh Startup Notice

When launching Zsh for the first time, you might see this message:

![image](https://github.com/user-attachments/assets/cbab2d36-3fae-4cb3-baa0-5274f2ca7bb8)

This happens because you don't yet have a `.zshrc` file.

Simply press `(2)` to generate a blank `.zshrc` file and continue — we’ll replace it later with a full configuration.

## Verification
To verify Zsh is now your shell:
```bash
echo $SHELL
```
If the result includes `/zsh`, then you’re all set.

## Next Steps

Now that you’ve successfully installed Zsh, continue to:

- [Install Oh My Zsh](../oh-my-zsh/oh-my-zsh_setup.md) — A framework to manage Zsh configuration  

> Zsh is the foundation, but the real magic happens when it’s paired with plugins, themes, and a smart terminal like Alacritty. Continue the guide to supercharge your terminal setup.
