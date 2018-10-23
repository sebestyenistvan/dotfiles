if [ $UID -eq 0 ]; then NCOLOR="red"; else bg1=33; bg2=39; f1=17; f2=251; fi

#PROMPT='%{$fg_bold[$NCOLOR]%}%M  %{$fg[$NCOLOR]%}%c ➤ %{$reset_color%}'
#PROMPT='%F{$f1}%K{$bg1}%M %F{$bg1}%K{$bg2} %F{f1}%K{$bg2}%c %F{$bg2}%K{232}%{$reset_color%} '
PROMPT='%F{45}%M» %F{f1}%c %F{$bg2}»%{$reset_color%} '
RPROMPT='%{$fg[$NCOLOR]%}%p $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# See https://geoff.greer.fm/lscolors/
#export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
#export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"

