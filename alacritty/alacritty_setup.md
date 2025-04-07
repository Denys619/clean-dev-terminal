## How to Install Alacritty

Alacritty is a **modern GPU-accelerated terminal emulator**, focused on simplicity and performance. It’s available for Linux, macOS, and Windows, and can be installed either through a package manager or built from source for maximum control.

This guide covers the installation process for all major platforms, explains how to verify and run Alacritty, and gives tips on setting it up properly.

## Installation on Linux

### Option 1: Ubuntu / Debian (Stable Version)

```bash
sudo apt update
sudo apt install alacritty
```

> This installs Alacritty from your system’s repository. It may not be the latest version.

### Option 2: Build from Source (Latest Version)

1. **Install dependencies:**

```bash
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev \
libxcb-xfixes0-dev libxkbcommon-dev python3
```

2. **Clone the repository:**

```bash
git clone https://github.com/alacritty/alacritty.git
cd alacritty
```

3. **Build with Cargo (Rust build system):**

```bash
cargo build --release
```

4. **Install the binary:**

```bash
sudo cp target/release/alacritty /usr/local/bin
```

5. **(Optional) Install the desktop entry:**

```bash
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
```

6. **(Optional) Set up terminfo:**

```bash
tic -xe alacritty,alacritty-direct extra/alacritty.info
```

---

### Arch Linux / Manjaro

```bash
sudo pacman -S alacritty
```

This fetches the latest official package directly from Arch’s repositories.

---

### After Installation

Once Alacritty is installed, you need to configure it:

- 📄 **Use our ready-to-go config:**  Simply copy the provided `alacritty.toml` to your config directory:

```bash
mkdir -p ~/.config/alacritty
cp alacritty.toml ~/.config/alacritty/alacritty.toml
```

- ⚙️ **Or configure it manually:**  Read the [Alacritty configuration guide](../alacritty/alacritty_configuration.md) to set everything up from scratch.

> 💡 If you don’t see the `alacritty/` folder inside `~/.config`, just create it manually.
