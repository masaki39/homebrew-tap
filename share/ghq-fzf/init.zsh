if [[ -n "${GHQ_FZF_FUNC}" ]]; then
  function ${GHQ_FZF_FUNC}() {
    local result
    result=$(ghq-fzf) && [[ -n "$result" ]] && cd "$(ghq root)/$result"
  }
fi

if [[ -n "${GHQ_FZF_KEY}" ]]; then
  function _ghq_fzf_widget() {
    local result
    result=$(ghq-fzf) && [[ -n "$result" ]] && cd "$(ghq root)/$result"
    BUFFER=""
    zle reset-prompt
  }
  zle -N _ghq_fzf_widget
  bindkey "${GHQ_FZF_KEY}" _ghq_fzf_widget
fi
