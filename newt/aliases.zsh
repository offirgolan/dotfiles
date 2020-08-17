if [ -x "$(command -v newt)" ]; then
  alias yarn="newt exec node"
  alias yarn="newt exec yarn"
  alias npm="newt exec npm"
  alias ruby="newt exec ruby"
fi

