# dotfiles

My personal configuration files and directories. Files/directories are stored without their "." prefix. Symlink/include these files to their expected location on the host system. This repo should be cloned into `~/dotfiles` by convention.

Dotfiles that aren't platform-specific should live in this root directory; platform-specific ones should live inside a directory specific to that platform.

## Files/Directories

* `bashrc` - bash shell configuration file. Include it in `~/.bashrc` like so:

```
source ~/dotfiles/zshrc
```

* `gitconfig` - Only contains configuration that is shared inside and outside of work (email field is excluded). Include this file in the OS `.gitconfig` like so:

```
[include]
    path = ~/dotfiles/gitconfig
```

* `gitignore` - Global git ignore. No setup required; included automatically by `gitconfig`

* `tmux.conf` - tmux settings. Link it like so:

```
In ~/:

ln -s ~/dotfiles/tmux.conf .tmux.conf
```

* `vimrc` - vim settings. Include it in ~/.vimrc like so:

```
source ~/dotfiles/vimrc
```

* `scripts` - A directory of handy scripts. Include the "setupAliases" file in .bashrc/.zshrc to configure aliases to them. The aliases script is already included in `shrc`.

* `shrc` - Common shell configuration including aliases etc. Don't include this file directly in a shell config - make a shell-specific config file, and include this one. Loads aliases from [dockerfiles repo](https://github.com/ultrafez/dockerfiles) if it's checked out.

* `sublime-text` - Configuration for Sublime Text 3. Doesn't include SublimeGit config as it includes a license key.

```
On Linux:

From ~/.config/sublime-text-3/Packages:
mv User User-old
ln -s ~/dotfiles/sublime-text/User User

On OS X:

From ~/Library/Application Support/Sublime Text 3/Packages:
mv User User-old
ln -s ~/dotfiles/sublime-text/User User
```

Install Package Control and then restart Sublime a few times to finish setting everything up.

* `zshrc-pre` - zsh config script that gets run _before_ oh-my-zsh is loaded (if using). Includes oh-my-zsh settings. Limit to zsh-specific commands that must occur before oh-my-zsh is loaded.

* `zshrc-post` - zsh config script that gets sourced _after_ oh-my-zsh is loaded (if using). Includes common shell config from `shrc`. Limit to zsh-specific commands; anything compatible with multiple shells should go in `shrc` instead.

Load zshrc config files in `.zshrc` like so:

```
source ~/dotfiles/zshrc-pre

# load oh-my-zsh here e.g.
# source $ZSH/oh-my-zsh.sh

source ~/dotfiles/zshrc-post
```