function _ghq_fzf_widget() {
  local result
  result=$(ghq-fzf) && cd "$(ghq root)/$result"
  zle reset-prompt
}
zle -N _ghq_fzf_widget
bindkey "${GHQ_FZF_KEY:-^g}" _ghq_fzf_widget
