function gv() {
  local result
  result=$(ghq-fzf) && cd "$(ghq root)/$result"
}
