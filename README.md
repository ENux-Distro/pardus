# Pardus Package Manager

Pardus Package Manager is a beginner-friendly package manager frontend made for the Pardus Linux distribution.

It provides:
- A GUI mode for beginners
- A TUI mode for intermediate users
- A CLI mode for advanced users

Under the hood, it uses the `apt` package manager while adding:
- A more user-friendly experience
- Turkish-focused design choices
- Pardus branding and integration
- Easier package management for new Linux users

The goal of this project is to make package management on Pardus simpler, more accessible, and more welcoming for Turkish users.

---

# Features

- Beginner-friendly graphical interface
- Terminal user interface (TUI)
- Traditional command-line interface (CLI)
- Support for both Turkish and English
- Uses `apt` underneath for compatibility and stability
- Lightweight and simple
- Desktop shortcut support
- Designed specifically for Pardus users

---

# Installation

## 1. Install Git

```bash
sudo apt install git
```

## 2. Clone the Repository

```bash
git clone --depth 1 https://github.com/ENux-Distro/pardus.git
```

## 3. Enter the Repository

```bash
cd pardus
```

## 4. Install Pardus Package Manager

```bash
make install
```

## 5. (Optional) Add Desktop Shortcut

```bash
make desktop
```

After installation, the package manager will be available system-wide.

---

# Usage

## GUI Mode (Recommended for Beginners)

Launch the graphical interface:

```bash
pardus
```

You can:
- Install packages
- Remove packages
- Update packages
- Manage software visually

---

## TUI Mode (Recommended for Intermediate Users)

Launch the terminal interface:

```bash
pardus --tui
```

This mode provides a keyboard-driven interface inside the terminal.

---

## CLI Mode (Recommended for Advanced Users)

Use commands directly from the terminal:

```bash
pardus [operation] [package]
```

Example:

```bash
pardus install fastfetch
```

---

# Why This Project Exists

Many new Linux users find traditional package managers intimidating.

Pardus Package Manager aims to:
- Make package management easier
- Improve accessibility for beginners
- Add a more modern experience to Pardus
- Provide Turkish and English support
- Keep the reliability of `apt` while improving usability

---

# License

This project is open source and available under the GNU GPL-v3 License
