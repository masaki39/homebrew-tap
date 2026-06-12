_ghq_fzf_func="${GHQ_FZF_FUNC:-gv}"
[[ -z "$_ghq_fzf_func" ]] && _ghq_fzf_func="gv"

function $_ghq_fzf_func() {
  local result
  result=$(ghq-fzf) && [[ -n "$result" ]] && cd "$(ghq root)/$result"
}

function _ghq_fzf_widget() {
  "$_ghq_fzf_func"
  BUFFER=""
  zle reset-prompt
}
zle -N _ghq_fzf_widget
bindkey "${GHQ_FZF_KEY:-^g}" _ghq_fzf_widget
