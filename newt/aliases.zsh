if [ -x "$(command -v newt)" ]; then
  export NEWT_SKIP_VPNCHECK=1

  alias node="newt exec node"
  alias yarn="newt exec yarn"
  alias npm="newt exec npm"
  alias ruby="newt exec ruby"
fi

