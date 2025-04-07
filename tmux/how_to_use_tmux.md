# How to Use Tmux

This guide provides an extended and beginner-friendly overview of the most essential `tmux` commands, workflows, and key concepts. Whether you're brand new to `tmux` or looking to strengthen your terminal game, this guide will help you gain control over sessions, windows, panes, and navigation with confidence.

## What is Tmux?

`tmux` is short for **Terminal Multiplexer**. It is a powerful tool that allows you to manage multiple terminal sessions within a single terminal window. This is especially useful for developers, sysadmins, and anyone who works extensively in the command-line interface.

### What You Can Do with Tmux:
- Run and manage multiple terminal sessions from one window.
- Split the terminal into multiple panes, both horizontally and vertically.
- Detach from a session and leave it running in the background.
- Reattach to a session later and continue where you left off.
- Keep long-running processes alive, even if you disconnect.

![image](https://github.com/user-attachments/assets/719e6da2-2283-4b39-a6de-bd2fc81cb0c3)

## ⌨️ About the Prefix Key

`tmux` uses a **prefix key** — a combination that must be pressed before any other `tmux` command. By default, this is `Ctrl + b`. However, in our configuration, we **changed it to `Ctrl + a`** to make it easier to reach and more ergonomic for regular use.

This prefix acts as a gateway: it tells tmux to expect a command input. For example:
- `prefix + c` means: press `Ctrl + a`, then release both keys and press `c`.
- `prefix + d` means: press `Ctrl + a`, then press `d` to detach.

> 💡 Think of the prefix key as the "tmux leader" key, much like Vim's leader key. It initiates every action.

### Why Change the Prefix?
- `Ctrl + a` is closer to the home row.
- It’s more natural to press frequently than `Ctrl + b`.
- It matches the behavior of GNU Screen, which many users are familiar with.

You can always change it back in your `.tmux.conf`:
```tmux
set -g prefix C-b
```

Understanding and using the prefix is **essential**. If shortcuts aren't working, make sure you've pressed the prefix first.

## Starting Tmux

To begin using `tmux`, simply open your terminal and type:
```bash
tmux
```
This creates a new tmux session and opens an interactive shell inside it.

You can also name your session:
```bash
tmux new -s mysession
```

> Naming sessions is helpful if you’re managing multiple projects or environments.

## 📂 Managing Sessions

Sessions are the top-level container in `tmux`. You can have multiple sessions running simultaneously.

- 🧾 **List all active sessions**:
```bash
tmux ls
```

- 🔄 **Attach to a session**:
```bash
tmux attach -t mysession
```

- ❌ **Kill (terminate) a session**:
```bash
tmux kill-session -t mysession
```

## Panes: Split Your Screen

Panes let you divide your tmux window into sections, so you can view multiple terminal sessions side-by-side.

- **Split horizontally**:
  `prefix + "`

- **Split vertically**:
`prefix + %`

- **Switch between panes**:
Use arrow keys: `prefix + ←/→/↑/↓`

- **Resize panes**:
Hold `Ctrl` and use arrow keys after pressing the prefix

- **Close a pane**:
Type `exit` inside the pane

> Panes are perfect for running build tools, editors, and logs all in one terminal view.

## Detach and Reattach Sessions

One of tmux’s killer features is the ability to leave a session running and come back to it later.

- 🔌 **Detach from session**:
```
prefix + d
```
- 🔁 **Reattach to a session**:
```bash
tmux attach -t mysession
```
Even if your terminal crashes or you reboot, your tmux session will survive (unless killed manually).

## Exiting Tmux Properly

To exit from a session, close each pane and window:
```bash
exit  # inside each pane
```
Once all windows are closed, tmux exits automatically.

You can also kill the session externally:
```bash
tmux kill-session -t mysession
```

---

✅ That’s it! With these essentials, you're now equipped to work faster, cleaner, and more efficiently inside your terminal using `tmux`. Try it out, explore further plugins and configuration, and make it your own workspace powerhouse.
