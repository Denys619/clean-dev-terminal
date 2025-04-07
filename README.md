# Clean Dev Terminal

**Clean Dev Terminal** is a beginner-friendly repository that guides developers through setting up a beautiful, functional Linux terminal. 

It combines several popular tools – **Alacritty (terminal emulator), Zsh (shell), Powerlevel10k (Zsh prompt theme), Tmux (terminal multiplexer), and patched Nerd Fonts.** 

The goal is to provide an easy getting-started guide explaining why each tool is used and how to configure it step by step. New users can either install the entire setup with one script or pick and customize components as needed. By following best practices in documentation and repo structure, the project aims to reach a broad audience (attracting more users, stars, and forks).

<div style="display: flex; gap: 50px;">
    <img src="https://github.com/user-attachments/assets/14290f1b-4e82-46a5-a56c-72b43a72dc68" width="49%"/>
    <img src="https://github.com/user-attachments/assets/ddf48fa9-3be3-467b-bff2-f3605963d836" width="49%"/>
</div>

## ✨ Why This Project Exists

Most Linux terminals come with basic shells, minimal visuals, and no productivity features. This project is designed to help beginners quickly set up a professional, fast, and aesthetically pleasing terminal environment — with tools loved by developers around the world.

Each tool is chosen for a reason:

| Tool              | Description                                                                 | Why Use It                                                                 |
|-------------------|-----------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| **Alacritty**      | A GPU-accelerated terminal emulator with simple YAML configuration         | Fast, minimal, modern terminal for performance-focused workflows           |
| **Zsh**            | An extended shell with better autocompletion, globbing, and scripting       | More powerful and customizable than Bash, great plugin ecosystem           |
| **Powerlevel10k**  | A Zsh theme with a highly customizable and informative prompt               | Fast and beautiful prompt with Git, time, exit code, and icons             |
| **Tmux**           | Terminal multiplexer: multiple windows/panes in one terminal session        | Enables session persistence, pane layouts, and multitasking                |
| **Nerd Fonts**     | Patched fonts with developer icons and powerline symbols                    | Required for prompt and tmux themes to render icons and separators         |


## 📁 Project Structure

```bash
clean-dev-terminal/
├── alacritty/        # Alacritty terminal config and guide
│   └── README.md     # Alacritty setup instructions
├── zsh/              # Zsh config, plugins, and Powerlevel10k setup
│   └── README.md     # Zsh + p10k configuration
├── tmux/             # Tmux config and plugin manager
│   └── README.md     # Tmux usage & customization
├── fonts/            # Font installation and setup
│   └── README.md     # Nerd Fonts info and links
├── install.sh        # One-click installer (WIP)
├── screenshots/      # Preview images
└── README.md         # Main documentation
```

Each subdirectory contains:
- ✅ Ready-to-use configuration files.
- 📖 A dedicated guide for setup and customization.

## Installation Options

Coming soon

## Who Is This For?

This guide is perfect for:
- Linux users (especially Ubuntu/Debian-based distros)
- Beginners curious about dotfiles and terminal config
- Anyone who loves visual polish with performance
- Developers who want a clean and efficient terminal

## 🙌 Contributing

We welcome contributions!
- Add themes, config variants, or improvements
- Submit fixes or suggestions to make setup easier
- Help expand support (e.g., Kitty, Neovim, etc.)

If you found this helpful, please give it a ⭐ on GitHub — it helps others discover it!

## Tools & Frameworks

[Alacritty](https://github.com/alacritty/alacritty) | [Zsh](https://www.zsh.org/) | [Powerlevel10k](https://github.com/romkatv/powerlevel10k) | [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) | [Tmux](https://github.com/tmux/tmux) | [Nerd Fonts](https://www.nerdfonts.com/)
