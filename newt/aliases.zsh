if [ -x "$(command -v newt)" ]; then
  export NEWT_SKIP_VPNCHECK=1

  alias yarn="newt exec node"
  alias yarn="newt exec yarn"
  alias npm="newt exec npm"
  alias ruby="newt exec ruby"
fi

