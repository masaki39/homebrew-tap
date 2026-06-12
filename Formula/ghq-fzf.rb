class GhqFzf < Formula
  desc "Interactive ghq repository picker with fzf"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/ghq-fzf-v1.0.1.tar.gz"
  sha256 "e11d0a5fe0160e64893237a1952a4b3ad49f367d8e4d60c351602b2ead23a92a"

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
