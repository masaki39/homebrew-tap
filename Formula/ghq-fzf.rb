class GhqFzf < Formula
  desc "Interactive ghq repository picker with fzf"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/ghq-fzf-v1.0.0.tar.gz"
  sha256 "8867ee8b921d6797ba08e3b8433765c0d191025581eacc222315f7d53f3ac2f6"

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
      To enable the `gv` shell function, run:
        ghq-fzf-install

      Or add manually to ~/.zshrc:
        source #{opt_share}/ghq-fzf/init.zsh
    EOS
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ghq-fzf --help 2>&1")
  end
end
