# Load NVM if available
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh

# If there is a non-empty ~/.profile.d directory source all it’s files.
if [[ -d ~/.profile.d ]] && [[ -n $(ls -A ~/.profile.d) ]]; then
  for config_file in ~/.profile.d/*; do
    source $config_file
  done
fi
