# dotfiles

My personal configuration files and directories. Files/directories are stored without their "." prefix. Symlink/include these files to their expected location on the host system. This repo should be cloned into `~/dotfiles` by convention.

Dotfiles that aren't platform-specific should live in this root directory; platform-specific ones should live inside a directory specific to that platform.

## Files/Directories

* `gitconfig` - Only contains configuration that is shared inside and outside of work (email field is excluded). Include this file in the OS `.gitconfig` like so:

```
[include]
    path = ~/dotfiles/gitconfig
```

* `tmux.conf` - tmux settings

* `vimrc` - vim settings. Include it in ~/.vimrc like so:

```
source ~/dotfiles/vimrc
```

* `scripts` - A directory of handy scripts. Include the "setupAliases" file in .bashrc/.zshrc to configure aliases to them

* `sublime-text` - Configuration for Sublime Text 3. Doesn't include SublimeGit config as it includes a license key.

To set up, from `~/.config/sublime-text-3/Packages` run `ln -s ~/dotfiles/sublime-text/User User`

