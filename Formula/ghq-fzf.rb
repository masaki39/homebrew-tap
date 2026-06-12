class GhqFzf < Formula
  desc "Interactive ghq repository picker with fzf"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/ghq-fzf-v1.1.5.tar.gz"
  sha256 "c7b0139ac0ea8039ed687b09fc3f16bcfe970b79dda752d3f1cdf75bb1657144"

  depends_on "fzf"
  depends_on "ghq"
  depends_on "eza"
  depends_on "gh"

  def install
    bin.install "bin/ghq-fzf"
    (share/"ghq-fzf").install "share/ghq-fzf/init.zsh"
  end

  def caveats
    <<~EOS
      Add to ~/.zshrc:
        source #{opt_share}/ghq-fzf/init.zsh

      Customize by adding before the source line:
        export GHQ_FZF_FUNC='repo'  # command name (default: gv)
        export GHQ_FZF_KEY='^]'     # key binding  (default: Ctrl-G)
    EOS
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ghq-fzf --help 2>&1")
  end
end
