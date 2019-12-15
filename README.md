# nbartons dotfiles

> uses GNU Stow to symlink dotfiles and a simeple shell script to configure mac with settings

## tools

- macos default settings
- install cli tools
- install software
- settings for dev tools

## prerequisites

the following tools installed.

- [brew](https://brew.sh)

## install via brew

Install Apps

```
brew cask install abstract /
    alfred /
    android-platform-tools /
    authy /
    charles /
    dashlane /
    discord /
    docker /
    firefox /
    google-chrome /
    grammarly /
    iterm2 /
    postman /
    sketch /
    slack /
    spectacle /
    spotify /
    visual-studio-code /
```

Install Tools

```
brew install /
    awscli /
    docker /
    zsh-syntax-highlighting /
    docker-compose /
    git /
    jq /
    nvm /
    stow /
    thefuck / 
    watchman /
    yarn /
    z /
```

## Setup SSH

Generate SSH keys

```
ssh-keygen -t rsa -b 4096 -C "neil@roughcoder.com"
```

Start up SSH agent and add key

```
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
```

Copy SSH to clipboard 

```
pbcopy < ~/.ssh/id_rsa.pub
```

Manually add it to GitHub, AWS etc.


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

## install plugins for oh-my-zsh

- [z](https://github.com/agkozak/zsh-z)
- [git-open](https://github.com/paulirish/git-open)
- [auto-complete](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)


## Setup Mac

Setup my perferred defaults across the mac

```
./dotfiles/macos/defaults.sh
```

Enter your password, when complete restart your machine.

## managing vscode settings and plugins

Save list of vscode plugins and to text  file

```
code --list-extensions >> vs_code_extensions_list.txt
```

Transfer the newly created file to the machine that you want to install those extensions to. On that machine you would:

```
cat vs_code_extensions_list.txt | xargs -n 1 code --install-extension
```

Which will then go through each extension in that file and install the extension.

If you want a clean install (AKA remove all existing extensions on that machine) you could run this before you install the new extensions (otherwise you will remove those new extensions too). BE CAREFUL as this will remove all extensions in VS Code:

```
code --list-extensions | xargs -n 1 code --uninstall-extension
```

## resources and inspiration

- [dotfiles](http://dotfiles.github.io/)
- [Andrew Schwartzmeyer dotfiles](https://github.com/andschwa/dotfiles)
- [Backup VsCode plugins](https://superuser.com/questions/1080682/how-do-i-back-up-my-vs-code-settings-and-list-of-installed-extensions)
- [Git Submodules](https://chrisjean.com/git-submodules-adding-using-removing-and-updating/)