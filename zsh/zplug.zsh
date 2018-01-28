export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/ember-cli", from:oh-my-zsh
zplug "plugins/node", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh
zplug "plugins/rails", from:oh-my-zsh
# zplug "plugins/command-not-found", from:oh-my-zsh
# zplug "plugins/fabric", from:oh-my-zsh
# zplug "plugins/git-flow", from:oh-my-zsh
# zplug "plugins/ssh-agent", from:oh-my-zsh

zplug "changyuheng/fz", defer:1
zplug "rupa/z", use:z.sh
zplug "djui/alias-tips"
zplug "lukechilds/zsh-better-npm-completion"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "changyuheng/zsh-interactive-cd"
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

# zplug check returns true if all packages are installed
# Therefore, when it returns false, run zplug install
if ! zplug check; then
  zplug install
fi

# source plugins and add commands to the PATH
zplug load

if zplug check zsh-users/zsh-autosuggestions; then
  ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-substring-search-up history-substring-search-down)
  ZSH_AUTOSUGGEST_CLEAR_WIDGETS=("${(@)ZSH_AUTOSUGGEST_CLEAR_WIDGETS:#(up|down)-line-or-history}")
fi

# Bind up and down arrow keys to history substring search
if zplug check zsh-users/zsh-history-substring-search; then
  bindkey '^[[A' history-substring-search-up
  bindkey '^[[B' history-substring-search-down
fi
