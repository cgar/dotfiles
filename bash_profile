#
# ~/.bash_profile
#
# Load ~/.bash_prompt, ~/.exports, ~/.aliases, ~/.functions and ~/.extra
# ~/.extra can be used for settings you don’t want to commit
for file in bash_prompt exports aliases functions extra; do
	file="$HOME/.$file"
	  [ -e "$file" ] && source "$file"
  done

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Default Editor
export EDITOR=/usr/bin/vim

PATH=$PATH:$HOME/.bin/
PATH=$PATH:$HOME/.bin/igor-1.502/
PATH=$PATH:$HOME/Git/scripts/
export PATH

# todo.sh bash completion
# source ~/.todo.txt/todo_completion

# Git completion
if [ -f ~/.git-completion.bash ]; then
      . ~/.git-completion.bash
  fi


# ---- Colored Man Pages ---- #  
man() {
     env \
         LESS_TERMCAP_mb=$(printf "\e[1;31m") \
         LESS_TERMCAP_md=$(printf "\e[1;31m") \
         LESS_TERMCAP_me=$(printf "\e[0m") \
         LESS_TERMCAP_se=$(printf "\e[0m") \
         LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
         LESS_TERMCAP_ue=$(printf "\e[0m") \
         LESS_TERMCAP_us=$(printf "\e[1;32m") \
             man "$@"
}

# notes utility

n() {
local arg files=(); for arg; do files+=( ~/"Documents/Git/notes/$arg" ); done
${EDITOR:-vim} "${files[@]}"
}

nls() {
tree -CR $HOME/Documents/Git/notes/
}

# TAB completion for notes
_notes() {
local files=($HOME/Documents/Git/notes/**/"$2"*)
    [[ -e ${files[0]} ]] && COMPREPLY=( "${files[@]##~/Documents/Git/notes/}" )
}
complete -o default -F _notes n
#source /etc/bash_completion.d/password-store
