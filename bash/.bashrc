shell_config="$HOME/.config/shell"

# paths
source "$shell_config/paths.sh"

# aliases
source "$shell_config/aliases.sh"

# zsh settings
source "$shell_config/zsh.sh"

# z (removed as using oh-my-zsh plugin)
# source "$shell_config/z.sh"

# fzf
source "$shell_config/fzf.sh"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:/opt/yarn-1.19.0/bin"