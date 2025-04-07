# Nerd Font Installation Guide

This comprehensive guide will walk you through installing the [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads), a beautifully styled and developer-friendly font patched with a huge set of glyphs/icons. This font is essential for a fully-featured terminal experience, especially when using themes like Powerlevel10k, and tools that depend on Nerd Fonts for visual enhancements.

## 🖋️ What is a Nerd Font?

**Nerd Fonts** is a project that takes the most popular programming fonts and patches them with icons from popular icon sets such as Font Awesome, Devicons, Octicons, and many more. These icons appear in modern prompts, file explorers, status lines, and development environments.

We recommend and use **JetBrainsMono Nerd Font** across this setup due to its clean look, ligature support, and perfect compatibility with Powerlevel10k.

## Installation Instructions (Linux)

### Step 1: Download the Font
Download the JetBrainsMono Nerd Font ZIP archive from the GitHub release:

```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip
```

### Step 2: Extract the Font to Your Local Fonts Directory

```bash
unzip JetBrainsMono.zip -d ~/.local/share/fonts
```

### Step 3: Update the Font Cache

```bash
fc-cache -fv
```

### Step 4: Set the Font in Your Terminal Emulator
Open your terminal emulator settings and configure the font to:

```
JetBrainsMono Nerd Font
```

This applies to terminals like Alacritty, Kitty, GNOME Terminal, WezTerm, and others.

> We'll do it in the next section

---

> 🎨 With JetBrainsMono Nerd Font installed, your terminal UI will be cleaner, more modern, and capable of displaying all icons and visual elements in your Zsh prompt and developer tools.
