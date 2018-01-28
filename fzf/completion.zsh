#!/bin/zsh
export FZF_COMPLETION_TRIGGER='**'
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null
