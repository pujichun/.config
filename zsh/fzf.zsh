# Setup fzf
# ---------
if [[ ! "$PATH" == */home/pujic/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/pujic/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/pujic/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/pujic/.fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_OPTS='--preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || highlight -O ansi -l {} || bat {}) 2> /dev/null | head -500"'
# export FZF_DEFAULT_OPTS='--bind=ctrl-t:top,change:top --bind ctrl-k:down,ctrl-i:up'
export FZF_DEFAULT_COMMAND='fd --hidden --follow --exclude={.git,.npm,.cargo,.pyenv,.fzf,.zi,.idea,.vscode,node_modules,build,venv,.wine,.deepinwine,.w3m,.vim,."Tencent Files",."pylint.d",.local,pkg,.cache}'
export FZF_COMPLETION_TRIGGER='\'
export fzf_preview_cmd='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || highlight -O ansi -l {} || bat {}) 2> /dev/null | head -500'
