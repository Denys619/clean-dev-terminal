# Tmux Guide

This section provides everything you need to get started with `tmux`, configure it to match your style, and use it like a pro. We also offer a ready-to-use configuration if you want to jump right in.

## What’s Inside

| File                          | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| [`tmux_setup.md`](./tmux_setup.md)             | Step-by-step guide to install Tmux and required dependencies.              |
| [`how_to_use_tmux.md`](./how_to_use_tmux.md)   | Beginner-friendly guide on how to actually use Tmux: sessions, windows, panes, and more. |
| [`tmux_configuration.md`](./tmux_configuration.md) | In-depth explanation of the `.tmux.conf` config and available plugins.     |
| [`.tmux.conf`](./.tmux.conf)                   | Preconfigured Tmux config with plugins, theme, and keybinds — just copy and use. |

## Quick Start

If you're a beginner and want the fastest way to get a beautiful Tmux experience:

1. **Install Tmux**  
    Follow [tmux_setup.md](./tmux_setup.md) to install everything properly, including TPM (plugin manager).

2. **Use Our Config**  
Copy our ready-to-go config:
```bash
cp .tmux.conf ~/.tmux.conf
```

3. **Reload Tmux Config**  
Either restart Tmux, or inside Tmux run:
```bash
tmux source ~/.tmux.conf
```

4. **Install Plugins**  
Launch Tmux and press:
```
Ctrl + a then Shift + i
```
This installs all the plugins from the config file.

> ⚙️ You can always tweak or extend your config later. Head over to [tmux_configuration.md](./tmux_configuration.md) for more customization options.

## Learn the Basics

Not sure how to use Tmux? No problem.

Check out [how_to_use_tmux.md](./how_to_use_tmux.md) for a complete walkthrough of:
- Sessions
- Windows
- Panes
- Navigation
- Shortcuts
- Detach & resume
- And more!

## Pro Tip

Our config changes the **prefix** key from `Ctrl + b` to `Ctrl + a` for better ergonomics. Every tmux command starts by pressing this prefix.

Example:
```
Ctrl + a, then c  # Create a new window
Ctrl + a, then d  # Detach
```

>If you don't understand what we're talking about, just check out [how_to_use_tmux.md](./how_to_use_tmux.md).
