os_name=$(uname)

# Make `ls` use colors.
if [[ $os_name == "Darwin" ]] ; then
  export LSCOLORS="exfxcxdxbxagadabafacah"
  alias ls='ls -G'
elif [[ $os_name == "Linux" ]]; then
  export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=0;46:cd=0;43:su=0;41:sg=0;45:tw=0;42:ow=0;47:"
  ls='ls --color=tty'
fi

# Color grep results
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'
