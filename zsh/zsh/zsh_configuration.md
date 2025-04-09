## Configuration Guide

This comprehensive guide walks you through enhancing your `.zshrc` configuration for a productive, modern terminal setup. Whether you're a beginner or an experienced developer, you'll find tips and best practices that help you build a responsive, readable, and powerful shell environment.

## 🧠 History & Shell Behavior

These settings improve how Zsh tracks and handles your command history, which is essential for workflow continuity and usability:

```zsh
HISTFILE=~/.zsh_history                           # Where to store the history file
HISTSIZE=10000                                    # Number of history lines to keep in memory
SAVEHIST=10000                                    # Number of history lines to save on disk
setopt share_history                              # Share history across all terminal sessions
setopt hist_ignore_dups                           # Ignore duplicate commands in history
setopt hist_ignore_space                          # Don’t store lines starting with a space
setopt hist_reduce_blanks                         # Remove extra blanks before saving
setopt append_history                             # Append to history file (don't overwrite)
setopt inc_append_history                         # Write to history file immediately
setopt correct                                    # Auto-correct minor typos in commands
```

These options make your terminal smarter, more efficient, and forgiving of typos while keeping your history clean and centralized.

## 🔁 Aliases for Productivity

Aliases let you create shortcuts for commonly used commands, saving valuable time:

```zsh
alias ls='eza --tree --level=1 --icons'                 # Enhanced ls output with icons
alias ll='ls -la'                                       # Long list all files
alias la='ls -A'                                        # List hidden files except . and ..
alias l='ls -CF'                                        # Classify files and show in columns
alias gitlog='git log --oneline --decorate --graph --all'
alias ..='cd ..'                                        # Move one directory up
alias update='sudo apt update && sudo apt upgrade -y'   # Full system update
alias reload!='source ~/.zshrc'                         # Reload Zsh config without restarting the shell
```

These simple aliases significantly improve day-to-day terminal use.

## Aliases by Programming Language

Having language-specific aliases streamlines development and testing processes:

### 🧾 C++
```zsh
alias g++='g++ -Wall -Wextra -pedantic -std=c++20'               # Compile C++ with modern standard
alias run='g++ main.cpp -o main && ./main'                       # Quick compile and run
alias dbg='g++ -g main.cpp -o main && gdb ./main'                # Debug with GDB
```

### 🐍 Python
```zsh
alias py='python3'                                               # Shortcut for Python 3
alias venv='python3 -m venv .venv && source .venv/bin/activate'  # Create and activate venv
alias pyrun='python3 main.py'                                    # Run main Python script
```

### ☕ Java
```zsh
alias javac='javac -Xlint'                                        # Compile with warnings
alias java-run='javac Main.java && java Main'                     # Compile and run
alias jclean='rm *.class'                                         # Remove compiled files
```

Organizing aliases like this keeps your configuration clean and scalable.

## 🔌 Plugin Configuration

To make your shell more interactive and intelligent, include these plugins:

```zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh             # Suggestions as you type
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh     # Syntax coloring
```

These enhance usability by offering suggestions from your history and coloring command syntax in real-time, helping you avoid mistakes and type faster.

## eza (Better ls Alternative)

[eza](https://github.com/eza-community/eza) is a modern, rust-based alternative to ```ls`. It provides better visuals, hierarchical tree views, color support, and Git-aware output.

Install it:
```bash
sudo apt install eza   # On Debian/Ubuntu
```

Recommended alias:
```zsh
alias ls='eza --tree --level=1 --icons'   # Enhanced ls
```

Sample output:

![image](https://github.com/user-attachments/assets/81be4597-b41b-4beb-ae3e-51c780240987)

> 🧠 Tip: You can explore additional options with ```eza --help` to customize it even more.

## Editor, Language & Other Environment Variables

These variables define your system’s behavior and preferred tools:

```zsh
export EDITOR=nvim                                # Default editor for CLI tools
export LANG=en_US.UTF-8                           # Set default locale
export MANPAGER='less -X'                         # Improved man page viewing
export PAGER='less'                               # Fallback pager for other CLI tools
eval "$(dircolors -b)"                            # Enable LS_COLORS for colored ```ls`
```

They ensure consistent behavior for file editing, output display, and text rendering.

## ⌨️ Keybindings & Completion

Customize how you navigate and autocomplete in the shell:

```zsh
bindkey -e                                                                        # Use emacs keybindings
autoload -Uz compinit && compinit                                                 # Initialize completion system
zstyle ':completion:*' menu select                                                # Menu-based tab completion
zstyle ':completion:*' group-name ''                                              # Group completions
zstyle ':completion:*' auto-description 'specify: %d'                             # Show description for each item
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}                     # Colored output for completion
zstyle ':completion:*' verbose true                                               # Verbose output
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'   # Better kill completion
```

This makes shell navigation smoother and more intuitive, especially with long or complex commands.

## Summary

With this `.zshrc` configuration, your terminal becomes:

- Efficient — with history handling, quick reloads, and fast workflows  
- Smart — thanks to autosuggestions, syntax highlighting, and typo correction  
- Developer-Friendly — with language-specific aliases and editor setup  
- Visually Modern — using tools like `eza`, colored output, and clean formatting  
- Customizable — designed to grow with your preferences and stack  

> 🧠 **Pro Tip:** Regularly review and refine your `.zshrc`. As your projects or tools evolve, so should your configuration!
