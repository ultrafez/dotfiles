# dotfiles

My personal configuration files and directories. Files/directories are stored without their "." prefix. Symlink/include these files to their expected location on the host system. This repo should be cloned into `~/dotfiles` by convention.

Dotfiles that aren't platform-specific should live in this root directory; platform-specific ones should live inside a directory specific to that platform.

## Files/Directories

* `gitconfig` - Only contains configuration that is shared inside and outside of work (email field is excluded). Include this file in the OS `.gitconfig` like so:

```
[include]
    path = ~/dotfiles/gitconfig
```

* `gitignore` - Global git ignore. No setup required; included automatically by `gitconfig`

* `tmux.conf` - tmux settings

* `vimrc` - vim settings. Include it in ~/.vimrc like so:

```
source ~/dotfiles/vimrc
```

* `scripts` - A directory of handy scripts. Include the "setupAliases" file in .bashrc/.zshrc to configure aliases to them

* `shrc` - Common shell configuration including aliases etc. Don't include this file directly in a shell config - make a shell-specific config file, and include this one.

* `sublime-text` - Configuration for Sublime Text 3. Doesn't include SublimeGit config as it includes a license key.

```
On Linux:

From ~/.config/sublime-text-3/Packages:
mv User User-old
ln -s ~/dotfiles/sublime-text/User User

On OS X:

From ~/Library/Application Support/Sublime Text 3:
mv User User-old
ln -s ~/dotfiles/sublime-text/User User
```

Install Package Control and then restart Sublime a few times to finish setting everything up.

* `zshrc` - zsh config script. Includes oh-my-zsh settings and common shell config from `shrc`. Any shell changes should be made in `shrc` if possible. Include it in ~/.zshrc like so:

```
source ~/dotfiles/zshrc
```
