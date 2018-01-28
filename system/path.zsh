# Directories to be prepended to $PATH
declare -a dirs_to_prepend
dirs_to_prepend=(
  "/usr/local/sbin"
  "/usr/local/git/bin"
  "/usr/local"
  "/usr/local/mysql/bin"
  "/sw/bin"
  "$DOTFILES/bin"
  "$HOME/bin"
  "/usr/local/bin"
  "/usr/local/opt/coreutils/libexec/gnubin" # Add brew-installed GNU core utilities bin
  "/usr/local/share/npm/bin" # Add npm-installed package bin
)

# Explicitly configured $PATH
PATH="$PATH"

for dir in ${(k)dirs_to_prepend[@]}
do
  if [ -d ${dir} ]; then
    # If these directories exist, then prepend them to existing PATH
    PATH="${dir}:$PATH"
  fi
done

unset dirs_to_prepend

export PATH
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
