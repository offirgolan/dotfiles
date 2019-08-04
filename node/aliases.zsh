# Disable reshimming
alias npm='ASDF_SKIP_RESHIM=1 npm'

# Nombom
alias nom='rm -rf node_modules && yarn cache clean && yarn install'
alias bom='rm -rf bower_components && bower cache clean && bower install'
alias nombom='nom && bom'
