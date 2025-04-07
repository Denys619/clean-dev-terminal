## Configuration Guide

This guide provides a comprehensive and modular `.tmux.conf` setup designed to boost your productivity, enhance the visual experience, and seamlessly integrate a variety of plugins and themes. It explains all the steps and settings you’ll need to go from a basic installation to a fully optimized development terminal environment.

Whether you're a beginner or a seasoned developer, this configuration will modernize your terminal workflow and make working inside Tmux intuitive, fast, and pleasant.

## 🔑 Change Prefix & Basic Options

Start by redefining the prefix key, enabling mouse control, improving scrollback, and enabling modern terminal features:

```tmux
set -g prefix C-a                                   # Change default prefix from Ctrl+b to Ctrl+a for convenience
set -g mouse on                                     # Enable mouse support (click to switch windows/panes)
set -g history-limit 10000                          # Allow deep scrollback into command history
set -g default-terminal "screen-256color"           # Use 256-color support for theme compatibility
set -ag terminal-overrides ',xterm-256color*:RGB'   # Enable true color rendering for rich themes

set -g base-index 1                                 # Make windows start at index 1 (instead of 0)
set -g pane-base-index 1                            # Make panes start at index 1
```

These settings ensure tmux behaves more intuitively and supports rich color themes.

## Plugin Manager + Plugin Setup

### Install TPM (Tmux Plugin Manager)

To manage plugins easily, clone the TPM repository:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Then, add the following line **at the bottom** of your ```.tmux.conf`:

```tmux
run '~/.tmux/plugins/tpm/tpm'
```

TPM allows you to install, update, and manage your plugins with ease directly from within tmux.

### 🔌 Recommended Plugins

```tmux
set -g @plugin 'tmux-plugins/tpm'                     # Plugin manager itself
set -g @plugin 'tmux-plugins/tmux-sensible'           # Sensible defaults and safety features
set -g @plugin 'christoomey/vim-tmux-navigator'       # Seamless navigation between Vim and Tmux panes
set -g @plugin 'tmux-plugins/tmux-resurrect'          # Save/restore tmux sessions across reboots
set -g @plugin 'tmux-plugins/tmux-continuum'          # Show active prefix visually; copy text with system clipboard
set -g @plugin 'tmux-plugins/tmux-prefix-highlight'
set -g @plugin 'tmux-plugins/tmux-yank'
```

These plugins provide a mix of usability, automation, and visual feedback that greatly enhance the experience.

## 🎨 Theme: Catppuccin

Catppuccin is a beautiful pastel theme with full support for Tmux.

![image](https://github.com/user-attachments/assets/3c32eae2-c03a-4d1b-b0ed-279c8807b7b7)

### Option 1: Manual Installation (Recommended)

For more control and to avoid name conflicts:

```bash
mkdir -p ~/.config/tmux/plugins/catppuccin

git clone -b v2.1.3 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
```

Add this to your `.tmux.conf`:

```tmux
run ~/.config/tmux/plugins/catppuccin/tmux/catppuccin.tmux
```

### Option 2: TPM-based Installation

```tmux
set -g @plugin 'catppuccin/tmux'
```

## Catppuccin Configuration Options

```tmux
set -g @catppuccin_flavor 'mocha'
set -g @catppuccin_window_status_style 'rounded'
set -g @catppuccin_window_number_position 'right'
set -g @catppuccin_window_status 'no'
set -g @catppuccin_window_default_text '#W'
set -g @catppuccin_window_current_fill 'number'
set -g @catppuccin_window_current_text '#W'
set -g @catppuccin_window_current_color '#242424'
set -g @catppuccin_status_module_text_bg '#242424'
set -g @catppuccin_status_background '#242424'
```

### Customize the Status Bar

Customize the position, refresh interval, and left/right content in the Tmux status bar:

```tmux
set -g allow-rename off                           # Prevent renaming tmux windows
set -g status-position top                        # Place status bar at the top of the screen
set -g status-interval 5                          # Update interval for dynamic content
set -g status-left-length 100
set -g status-right-length 100

set -g status-left '#{E:@catppuccin_status_session} '
set -g status-right '#{E:@catppuccin_status_directory}'
```

The content is rendered using Catppuccin modules, and can be extended with additional ones like weather, hostnames, battery, etc.

## Additional Configurations

```tmux
set -g renumber-window on    # Automatically renumber windows when one is closed
```

This makes sure your layout always remains clean and logical.

## Installing Plugins in Tmux

After setting up your `.tmux.conf`, launch a tmux session by write `tmux` in your terminal and press:

```
(press 1) Ctrl  + a
(press 2) Shift + i
```

> By default `prefix` is `Ctrl  + b` but we change it in the first block of configuration/.

This will trigger TPM and install all the plugins you’ve declared in your config.

To reload the config manually:

```bash
tmux source ~/.tmux.conf
```

> 💡 Tip: To ensure all plugins are working, restart tmux and check for any errors. You should also see changes in your status bar immediately.
