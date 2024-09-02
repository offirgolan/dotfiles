# zshrc config
alias reload!='. ~/.zshrc'
alias zshrc="${EDITOR} ${$(cd -P $(dirname $0) && cd ..; pwd -P)}"

# zsh.local config
alias localrc="if [[ -a ~/.zsh.local ]]; then ${EDITOR} ~/.zsh.local; fi"

# fd is used in oh-my-zsh/plugins/common-aliases so need to rename it
alias fnd='\fd'
