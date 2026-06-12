class GhqFzf < Formula
  desc "Interactive ghq repository picker with fzf"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/ghq-fzf-v1.0.2.tar.gz"
  sha256 "fe66dbe3aaab77888418e45e04cf45e85cc95fc988f9b371d17b51fbf8b976f5"

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
