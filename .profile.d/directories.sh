# Use pushd instead of cd.
cd () {
  if [ $# -eq 0 ]; then
    DIR="${HOME}"
  else
    DIR="$1"
  fi

  pushd "${DIR}" > /dev/null
}

# Create a directory and change to it.
function take() {
  mkdir -p $1
  cd $1
}

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Directory operations
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../..'
alias cd...='cd ../..'
alias ....='cd ../../..'
alias cd....='cd ../../..'
alias .....='cd ../../../..'
alias cd.....='cd ../../../..'
alias -- -='cd -'

alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias d='dirs -v | head -10'

alias md='mkdir -p'
alias rd=rmdir

# List direcory contents
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -l'
alias la='ls -lA'
alias sl=ls # often screw this up
