# nbartons dotfiles

> uses GNU Stow to symlink dotfiles and a simeple shell script to configure mac with settings

## tools

- git
- bash
- zsh
- tmux
- vim
- macos default settings

## prerequisites

the following tools installed.

- [brew](https://brew.sh)
- [iterm 2](https://www.iterm2.com/)
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/)
- [nvm](https://github.com/creationix/nvm)
- [the fuck](https://github.com/nvbn/thefuck)
- [yarn](https://yarnpkg.com/en/)

## install

install gnu stow on a mac
```bash
brew install stow
```
installing on ubunto
```
sudo apt-get install stow
```

clone repo into your home folder
```bash
cd ~
git clone https://github.com/roughcoder/dotfiles/
cd dotfiles
```

install the required config files
```bash
stow bash # install .bash files
stow git # install git config files
```

## resources and inspiration

- [dotfiles](http://dotfiles.github.io/)
- [Andrew Schwartzmeyer dotfiles](https://github.com/andschwa/dotfiles)
