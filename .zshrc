# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{226}%b%f'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{226}%n%f@%F{040}%~%f ${vcs_info_msg_0_} $ '
