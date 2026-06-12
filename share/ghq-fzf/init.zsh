function _ghq_fzf_run() {
  local result
  result=$(ghq-fzf) && [[ -n "$result" ]] && cd "$(ghq root)/$result"
}

alias "${GHQ_FZF_FUNC:-gv}=_ghq_fzf_run"

function _ghq_fzf_widget() {
  _ghq_fzf_run
  zle reset-prompt
}
zle -N _ghq_fzf_widget
bindkey "${GHQ_FZF_KEY:-^g}" _ghq_fzf_widget
