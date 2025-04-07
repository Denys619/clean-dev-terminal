## Oh My Zsh Installation Guide

Oh My Zsh is a delightful, open-source, community-driven framework for managing your Zsh configuration. It enhances the terminal experience by providing a vast plugin ecosystem, themes, helpful aliases, and many other quality-of-life improvements for your shell workflow.

## Why Use Oh My Zsh?

- Easy plugin and theme management through a centralized system  
- Rich ecosystem with 300+ plugins and 100+ themes  
- Predefined aliases and functions to boost productivity  
- Highly customizable to match your preferences and workflow  
- Backed by a large community and regularly maintained  
- Makes your terminal environment more interactive and powerful  

## Install Oh My Zsh

Before you begin, make sure that:

1. **Zsh** is already installed.  
2. **Zsh** is set as your default shell.  

You can verify your shell by running:

```bash
echo $SHELL
```

If it returns something like `/bin/zsh`, you're good to go.

### Step-by-Step Installation

#### 1. Install via `curl`:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## After Installation

Once the installation is complete:

- Your shell will automatically switch to Zsh (if it wasn’t already).  
- You’ll see a new and more stylish command prompt.  
- The new `.zshrc` file will be created at your home directory.  
- Old `.zshrc` (if any) will be saved as `.zshrc.pre-oh-my-zsh`.  

### Restart Terminal

It’s recommended to **restart your terminal** after installation to make sure everything loads properly.  
You can simply close the terminal and open it again.

## Updating Oh My Zsh

You can easily update Oh My Zsh to the latest version using:

```bash
omz update
```

Or the older command:

```bash
upgrade_oh_my_zsh
```

This ensures you have access to the latest features, plugins, and bug fixes.

## ❌ Uninstalling Oh My Zsh

If you ever want to remove Oh My Zsh and go back to a plain Zsh or other shell:

```bash
uninstall_oh_my_zsh
```

This script will:

- Delete the `~/.oh-my-zsh/` directory  
- Restore your previous shell configuration (if it was backed up)  

## ✅ What’s Next?

You now have Oh My Zsh installed and ready to go!

Here’s what you should do next:

- [Install Powerlevel10k theme](../p10k/p10k_setup.md)  

> 🧠 **Pro Tip:** Avoid blindly copying large `.zshrc` configs from others. Instead, gradually build your own setup — we’ll guide you step-by-step through essential options.

