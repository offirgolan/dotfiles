#!/bin/sh

if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="$PATH:/usr/local/opt/fzf/bin"
fi

source "/usr/local/opt/fzf/shell/key-bindings.zsh"

# Setup Default Options
#   - Uses the same prompt as Pure
#   - Matches Chesterish iTerm theme
#   - Sets up preview command
export FZF_DEFAULT_OPTS='
  --prompt="❯ "
  --height="50%"
  --preview="
    [[ ! -e {} ]] && return 0 ||
    [[ -d {} ]] && echo {} is a directory && return 0 ||
    [[ $(file --mime {}) =~ binary ]] && echo {} is a binary file && return 0 ||
    (highlight -O ansi {} || cat {}) 2> /dev/null | head -500
  "
  --reverse
  --cycle
  --color=bg+:#293340,bg:#293340,spinner:#ffec8e,hl:#be86e3
  --color=fg:#cdd2e9,header:#4cb2ff,info:#4cb2ff,pointer:#faa84a
  --color=marker:#ffec8e,fg+:#faa84a,prompt:#e17e85,hl+:#be86e3
'

# Use `fd` instead of find for faster lookups.
# Make sure to show hidden files and follow symlinks by default
# Also exclude .git directories
export FZF_DEFAULT_COMMAND='\fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
