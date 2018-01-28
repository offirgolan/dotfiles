# Enable aliases to be sudo’ed
alias sudo="sudo "

# Shortcuts
alias g="git"
alias v="vim"
alias gh="github"
alias rm="trash"
alias x+="chmod +x"
alias -- +x="chmod +x"

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# mv, rm, cp, gunzip
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'
alias ungz="gunzip -k"

alias cls='clear' # Good 'ol Clear Screen command

# Trim new lines and copy to clipboard
alias trimcopy="tr -d '\n' | pbcopy"

alias where=which # sometimes i forget

# Be nice
alias htop='sudo htop'
alias hosts='sudo $EDITOR /etc/hosts'   # yes I occasionally 127.0.0.1 twitter.com ;)

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

#
# Time to upgrade `ls`
#

# Use coreutils `ls` if possible
hash gls >/dev/null 2>&1 || alias gls="ls"

# Always use color output for `ls`
# Detect which `ls` flavor is in use
if gls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

export CLICOLOR_FORCE=1

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# ls options: A = include hidden (but not . or ..), F = put `/` after folders, h = byte unit suffixes
alias ls='ls -AFh ${colorflag} --group-directories-first'

# List all files colorized in long format, including dot files
alias la="ls -la ${colorflag}"

# List only directories
alias lsd='gls -l | grep "^d"'

# `cat` with beautiful colors. requires Pygments installed.
# sudo easy_install -U Pygments
# alias c='pygmentize -O style=monokai -f console256 -g'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print \$2}'"

# Networking. IP address, dig, DNS
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"

# View HTTP traffic
alias sniff="sudo ngrep -W byline -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en0 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Download file and save it with filename of remote file
alias get="curl -O -L"

# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

# Disc utils
alias diskspace_report="df -P -kHl"
alias free_diskspace_report="diskspace_report"

# File size
alias fs="stat -f \"%z bytes\""

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs & the useless sleepimage to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo grm -rf $HOME/.Trash; sudo rm -rtv /private/var/log/asl/*.asl; sudo rm /private/var/vm/sleepimage"

# Show/hide hidden files in Finder
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Show/hide all desktop icons (useful when presenting)
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

# HTTP Requests. One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
  alias "$method"="lwp-request -m '$method'"
done

# Vim
alias :q="exit"

# Mac Apps
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias stree='/Applications/SourceTree.app/Contents/Resources/stree'

# Custom Directories
alias src='cd ~/src && ls -d */'
alias tmp='cd ~/tmp && ls -d */'
