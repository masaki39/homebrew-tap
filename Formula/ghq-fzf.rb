class GhqFzf < Formula
  desc "Interactive ghq repository picker with fzf"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/ghq-fzf-v1.0.4.tar.gz"
  sha256 "6073f5cba2dcf047f8cf881e222133c4d351a10b1c67ffdc73a268ed6085ef51"

  depends_on "fzf"
  depends_on "ghq"
  depends_on "eza"
  depends_on "gh"

  def install
    bin.install "bin/ghq-fzf"
    bin.install "bin/ghq-fzf-install"
    (share/"ghq-fzf").install "share/ghq-fzf/init.zsh"
  end

  def caveats
    <<~EOS
      To enable Ctrl-G key binding, run:
        ghq-fzf-install

      Or add manually to ~/.zshrc:
        [[ -f #{opt_share}/ghq-fzf/init.zsh ]] && source #{opt_share}/ghq-fzf/init.zsh

      Customize the key binding:
        export GHQ_FZF_KEY='^r'  # add before the source line
    EOS
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ghq-fzf --help 2>&1")
  end
end
