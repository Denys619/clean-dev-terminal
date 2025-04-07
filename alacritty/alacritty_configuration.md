lacritty Setup Guide

This directory contains the configuration for **Alacritty**, a GPU-accelerated terminal emulator that's fast, minimal, and ideal for development. It offers a modern terminal experience with customizability and performance in mind, perfectly suited for developers who prioritize speed and visual clarity.

## Why Alacritty?

Alacritty is:
- **Blazing fast** — leverages your GPU for rendering, making it one of the most responsive terminal emulators available.
- **Minimal** — avoids built-in tabs or splits, encouraging integration with dedicated tools like [Tmux](../tmux) *(guide [here](../tmux/README.md))*
- **Configurable** — supports rich customization through a user-friendly TOML configuration file.
- **Cross-platform** — runs on Linux, macOS, and Windows with a consistent experience.
- **Developer-friendly** — no fluff, optimized for keyboard-based workflows and programming.

Alacritty is an excellent choice if you want a lightweight terminal that can be tailored to fit your aesthetic and functional preferences.

---

### 🗂 Default Config Location
```bash
~/.config/alacritty/alacritty.toml
```
Place your config file here to have it loaded automatically.

> 💡 If you don’t see the `alacritty/` folder inside `~/.config`, just create it manually.

## ⚙️ Configuration Overview

Below is a full explanation of Alacritty's configuration capabilities, including advanced features to get the most out of your terminal environment.

### 🌈 Appearance
```toml
[window]
dimensions = { columns = 100, lines = 30  }        # Set the initial terminal size (in cells)
padding = { x = 8, y = 6  }                        # Space around the terminal content
opacity = 0.92                                    # Background opacity (1.0 = opaque)
blur = true                                       # Enables background blur if supported by the compositor
decorations = "Buttonless"                        # Window decorations (full, none, or buttonless)
startup_mode = "Maximized"                        # How the window should appear initially
position = { x = 100, y = 100  }                   # Set initial window position (optional)
dynamic_padding = true                            # Enable padding adjustment for dynamic resizing
resize_increments = true                          # Resize in multiples of character cells
```

### 🔤 Fonts
```toml
[font]
normal = { family = "JetBrainsMono Nerd Font", style = "Regular"  }
bold = { family = "JetBrainsMono Nerd Font", style = "Bold"  }
italic = { family = "JetBrainsMono Nerd Font", style = "Italic"  }
size = 13.0                                       # Font size in points
builtin_box_drawing = true                        # Use built-in box drawing characters
offset = { x = 0, y = 0  }                         # Fine-tune font placement
glyph_offset = { x = 0, y = 0  }                   # Offset of glyphs for better alignment
```
You must install [Nerd Fonts](../fonts) for proper rendering *(guide [here](../fonts/README.md))*.

### 🐚 Shell
```toml
[shell]
program = "/usr/bin/zsh"
```
Using [Zsh](../zsh) enhances the terminal experience *(guide [here](../zsh/README.md))*.

### 🌍 Terminal Environment
```toml
[env]
TERM = "xterm-256color"                           # Set terminal type to support 256 colors
```
Ensure compatibility with applications expecting xterm-style color support.

### 🖱️ Mouse Configuration
```toml
[mouse]
bindings = []                                     # List of custom mouse event bindings
hide_when_typing = true                           # Auto-hide mouse while typing
```

### ⌨️ Key Bindings
```toml
[[keyboard.bindings]]
key = "V"
mods = "Control|Shift"
action = "Paste"                                  # Paste from clipboard using Ctrl+Shift+V

[[keyboard.bindings]]
key = "C"
mods = "Control|Shift"
action = "Copy"                                   # Copy selected text using Ctrl+Shift+C

[[keyboard.bindings]]
key = "PageUp"
action = "ScrollPageUp"                           # Scroll up one page

[[keyboard.bindings]]
key = "PageDown"
action = "ScrollPageDown"                         # Scroll down one page

[[keyboard.bindings]]
key = "Return"
mods = "Control|Shift"
action = "SpawnNewInstance"                       # Open a new Alacritty window with Ctrl+Shift+Enter

```
Create custom bindings to extend productivity with key combos.

### 🔊 Bell Behavior
```toml
[bell]
enabled = false                                   # Enable/disable terminal bell
animation = "EaseOutExpo"                         # Bell animation style (optional)
duration = 100                                    # Bell duration in milliseconds
color = "#ff0000"                                 # Color of visual bell (if enabled)
```

### 🧱 Scrolling
```toml
[scrolling]
history = 10000                                   # Number of scrollback lines to retain
multiplier = 3                                    # Scrolling speed multiplier
auto_scroll = false                               # Automatically scroll to bottom when output is received
```

### 🔧 Cursor Options
```toml
[cursor]
style = { shape = "Block", blinking = "On"  }      # Cursor style: Block, Underline, Beam
blink_interval = 750                              # Milliseconds between blinks
blink_timeout = 5                                 # Stop blinking after inactivity (in seconds)
unfocused_hollow = true                           # Show hollow cursor when window is unfocused
```

## Extra Recommendations

- Use [Tmux](../tmux) for multiple sessions and split panes *(guide [here](../tmux/README.md))*
- Pair with [Zsh](../zsh) for advanced shell features *(guide [here](../zsh/README.md))*
- Install [Nerd Fonts](../fonts) to render all icons correctly *(guide [here](../fonts/README.md))*

## Useful Links

- Alacritty GitHub: [https://github.com/alacritty/alacritty](https://github.com/alacritty/alacritty)
- Config Reference: [https://github.com/alacritty/alacritty/blob/master/alacritty.yml](https://github.com/alacritty/alacritty/blob/master/alacritty.yml)
- Nerd Fonts: [https://www.nerdfonts.com/](https://www.nerdfonts.com/)

> ⚠️ Note: Some features like background blur require a compositor (e.g., `picom`) and may not work in all environments.

---

This configuration provides a professional terminal environment tailored for developers who value speed, visual clarity, and full control over their workspace. It’s designed to integrate seamlessly into the ```clean-dev-terminal` ecosystem and can be extended further as your workflow evolves.
