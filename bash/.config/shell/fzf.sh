if [ -z "$ZSH_NAME" ]; then [ -f ~/.fzf.bash ] && source ~/.fzf.bash; else [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh; fi

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
