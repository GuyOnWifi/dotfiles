# Lazy-load nvm: defer the ~940ms init until the first time you invoke
# nvm/node/npm/npx. First call replaces these stubs with the real ones.
#
# Probes common install locations so this file works across machines:
#   Arch:        /usr/share/nvm/init-nvm.sh
#   Manual/curl: ~/.nvm/nvm.sh
#   Homebrew:    /opt/homebrew/opt/nvm/nvm.sh (Apple Silicon) or
#                /usr/local/opt/nvm/nvm.sh   (Intel Mac)

for _nvm_candidate in \
  /usr/share/nvm/init-nvm.sh \
  "$HOME/.nvm/nvm.sh" \
  /opt/homebrew/opt/nvm/nvm.sh \
  /usr/local/opt/nvm/nvm.sh; do
  if [[ -r "$_nvm_candidate" ]]; then
    _NVM_INIT_SCRIPT="$_nvm_candidate"
    break
  fi
done
unset _nvm_candidate

if [[ -n "$_NVM_INIT_SCRIPT" ]]; then
  _load_nvm() {
    unfunction nvm node npm npx 2>/dev/null
    source "$_NVM_INIT_SCRIPT"
    unset _NVM_INIT_SCRIPT
  }
  nvm()  { _load_nvm; nvm  "$@"; }
  node() { _load_nvm; node "$@"; }
  npm()  { _load_nvm; npm  "$@"; }
  npx()  { _load_nvm; npx  "$@"; }
fi
