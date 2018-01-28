if which brew >/dev/null 2>&1; then
	brew() {
		case "$1" in
		cleanup)
			(cd "$(brew --repo)" && git prune && git gc)
			command brew cleanup
			command brew cask cleanup
			command brew prune
			rm -rf "$(brew --cache)"
			;;
		bump)
			command brew update
			command brew upgrade
			brew cleanup
			;;
		*)
			command brew "$@"
			;;
		esac
	}
fi

alias cask='brew cask' # i <3 u cask

# Update installed Ruby gems, Homebrew, npm, and their installed packages
alias brew_update="brew -v update; brew upgrade --force-bottle --cleanup; brew cleanup; brew cask cleanup; brew prune; brew doctor; npm-check -g -u"
alias update_brew_npm_gem='brew_update; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update --no-rdoc --no-ri'
