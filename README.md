# dotfiles

My personal dotfiles. Files are stored without their "." prefix. Symlink/include these files to their expected location on the host system. This repo should be cloned into the home directory by convention.

Dotfiles that aren't platform-specific should live in this root directory; platform-specific ones should live inside a directory specific to that platform.

## Files

* `gitconfig` - Only contains configuration that is shared inside and outside of work (email field is excluded). Include this file in the OS `.gitconfig` like so:

```
[include]
    path = ~/dotfiles/gitconfig
```

