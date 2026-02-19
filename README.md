# Pardus Package Manager

In order to install the Pardus Package Manager on your Pardus system, you need to these steps:

- Git clone the repo via `sudo apt install git && git clone --depth 1 https://github.com/ENux-Distro/pardus.git`

- Change your current directory to the repo's directory via `cd /path/to/pardus`

- Install the Pardus Package Manager to your system via `make install`

- Optionally, run `make desktop` to have a desktop shortcut for you to double-click on

After everything went succesfully, you now have installed the Pardus Package Manager to Pardus

## How to Use the Pardus Package Manager

**1: The TUI Method (Recommended for beginners)**

- Run **pardus** on the terminal, or with our desktop shortcut.

- Choose your operation.

- On install and remove, it'll ask for a package, type it.

- Let the package manager do its thing.

**2: The CLI Method (Recommended for intermediate/experts)**

- Run **pardus** [operation] <package>

- Let the package manager do its thing
