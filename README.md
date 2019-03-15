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
- [nvm](https://github.com/creationix/nvm)
- [iterm 2](https://www.iterm2.com/)

## install via brew

Install Apps

```
brew cask install google-chrome visual-studio-code dashlane docker postman iterm2 spectacle slack authy spotify discord alfred charles sketch firefox
```

Install Tools

```
brew install thefuck z stow yarn docker docker-compose git
```

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
