# Powerlevel10k Installation Guide
werlevel10k Installation Guide

Powerlevel10k is a fast, modern, and highly customizable Zsh theme that enhances your terminal prompt with rich, context-aware information. Designed for speed and beauty, Powerlevel10k can drastically improve your development experience by making your terminal both functional and aesthetic.

## ✨ Why Use Powerlevel10k?

| Feature                         | Description                                                                 |
|----------------------------------|-----------------------------------------------------------------------------|
| Blazing Fast                  | Optimized for instant rendering, even with complex prompts                 |
| Highly Configurable           | Full control via intuitive interactive wizard                              |
| Beautiful Design              | Icons, colors, structured layout, and preset styles                        |
| Great Plugin Support          | Seamless integration with Oh My Zsh and other ecosystem tools              |
| Smart UI                      | Dynamically displays relevant info like Git status and job indicators      |
| Productivity Features         | Shows execution time, exit status, background jobs, etc.                   |
| Custom Logic & Conditions     | Supports conditional segments, instant prompt, transient prompt, and more  |

## 📦 Prerequisites

Before you can use Powerlevel10k, ensure the following dependencies are in place:

1. **Zsh shell** — [Install Zsh](../zsh/zsh_setup.md) if it’s not already your default shell  
2. **Oh My Zsh** — [Install Oh My Zsh](../oh-my-zsh/oh-my-zsh_setup.md) to manage your themes and plugins  
3. **Nerd Font** — Use a terminal font that includes glyphs/icons (e.g., JetBrainsMono Nerd Font)  
4. **Modern Terminal** — A terminal that supports true color (like Alacritty, iTerm2, or Kitty)  

> 💡 Don’t have a Nerd Font yet? Follow our [Fonts Setup Guide](../fonts/README.md) to install one.

## Installation Instructions

### Using Oh My Zsh

Powerlevel10k integrates seamlessly with Oh My Zsh. Here’s how to install it:

1. Clone the Powerlevel10k repository into your Oh My Zsh custom themes folder:

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

2. Open your `.zshrc` file, find `ZSH_THEME=...` and set the theme:

```zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
```

3. Reload your shell configuration:

```bash
source ~/.zshrc
```

This will activate Powerlevel10k and trigger the setup wizard on your next terminal launch.

## Interactive First-Time Setup Wizard

When you first open your terminal with Powerlevel10k enabled, it will launch a configuration wizard. This tool allows you to fully customize your prompt without touching code.

[Screencast from 2025-04-07 13-36-02.webm](https://github.com/user-attachments/assets/8846dcab-3e7a-456e-bfbf-a4a351b068ca)

### The wizard helps you:

- Choose a **prompt style**: lean, classic, rainbow, or minimal  
- Select which **segments** to display: current dir, Git info, time, etc.  
- Test your **terminal font and glyph compatibility**  
- Preview each option in real time with example prompts  

Once completed, a file named `~/.p10k.zsh` will be generated. This is your personal configuration and will automatically load via `.zshrc`.

> 💾 To change styles later, just run:

```bash
p10k configure
```

You can re-run this command anytime to customize Powerlevel10k without editing config files manually.

## ⚙️ Optional Tips & Troubleshooting

- **Font issues?** Double check your terminal is using a Nerd Font.  
- **Colors look off?** Ensure true color (24-bit) is enabled in your terminal emulator.  
- **Want custom logic?** You can manually edit `~/.p10k.zsh` to create dynamic segments and behavior.  
- **Prompt jumping?** Try disabling instant prompt or adjusting init timing in `.zshrc`.

## Final Notes & Best Practices

For the best experience with Powerlevel10k, we recommend using it in combination with:

- [Alacritty](../../alacritty) — A fast, GPU-accelerated terminal emulator  
- [Oh My Zsh](../oh-my-zsh) — Zsh configuration manager  
- [Tmux](../../tmux) — Terminal multiplexer for tabs, splits, and sessions  
- [Zsh Plugins](../zsh/zsh_configuration.md) — Autosuggestions, syntax highlighting, and more  

> 🧠 **Pro Tip:** `~/.p10k.zsh` is incredibly powerful. Explore the comments inside it to learn about advanced prompt customization, conditional rendering, transient prompt modes, and more.
