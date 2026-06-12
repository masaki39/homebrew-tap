_ghq_fzf_cmd="${GHQ_FZF_FUNC:-gv}"

function $_ghq_fzf_cmd() {
  local result
  result=$(ghq-fzf) && [[ -n "$result" ]] && cd "$(ghq root)/$result"
}

function _ghq_fzf_widget() {
  eval "$_ghq_fzf_cmd"
  zle reset-prompt
}
zle -N _ghq_fzf_widget
bindkey "${GHQ_FZF_KEY:-^g}" _ghq_fzf_widget
