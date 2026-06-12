class GhqFzf < Formula
  desc "Interactive ghq repository picker with fzf"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/ghq-fzf-v1.1.0.tar.gz"
  sha256 "PLACEHOLDER"

  depends_on "fzf"
  depends_on "ghq"
  depends_on "eza"
  depends_on "gh"

  def install
    bin.install "bin/ghq-fzf"
  end

  def caveats
    <<~EOS
      Add a shell function to ~/.zshrc to enable cd on selection:
        function gv() { local r; r=$(ghq-fzf) && [[ -n "$r" ]] && cd "$(ghq root)/$r"; }
    EOS
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ghq-fzf --help 2>&1")
  end
end
