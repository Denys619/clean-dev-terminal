# Installation Guide

This detailed guide will walk you through the installation and basic setup of [`tmux`](https://github.com/tmux/tmux/wiki), a powerful and flexible terminal multiplexer. Tmux allows you to manage multiple terminal windows and panes within a single screen session, detach and reattach sessions, and drastically improve your productivity when working in the command-line environment.

Whether you're managing remote servers, writing code, or just want a cleaner workflow, `tmux` is a must-have tool in your terminal toolkit.

## Installing Tmux

You can install `tmux` on nearly any operating system. Below are platform-specific instructions:

### Linux (Debian/Ubuntu)
Run the following commands to update your package list and install tmux:

```bash
sudo apt update
sudo apt install tmux -y
```

### Arch Linux / Manjaro
If you're on an Arch-based system:

```bash
sudo pacman -S tmux
```

### Verify the Installation
To ensure tmux is installed correctly and ready to use, run:

```bash
tmux -V
```

You should see the installed version, for example: `tmux 3.3a`

If you see a version number, you're good to go!

## 📂 Create Tmux Config File

Tmux can be customized with a configuration file named `.tmux.conf`, located in your home directory.

To create it:

```bash
touch ~/.tmux.conf
```

This file is where you can define keybindings, visual style, mouse support, clipboard behavior, plugin usage, and much more.

## Next Steps

Now that tmux is installed, it's time to configure it and learn how to use it effectively:

- 📄 [Configure Tmux](./tmux_configuration.md): Enhance tmux with themes, plugins, and keyboard shortcuts.
- 📘 [Learn How to Use Tmux](./how_to_use_tmux.md): A beginner-friendly crash course with essential commands and workflow tips.
