# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '⚡️%b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
# PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} 
# > '

PS1='%F{cyan}╔╡%F{cyan}[%n]%F{cyan}:%F{magenta}[%m]%F{cyan}➾%F{green}[%~]%F{default}%F{yellow}${vcs_info_msg_0_}%F{cyan}
╚═╡%F{default}'
