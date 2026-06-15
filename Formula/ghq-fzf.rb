class GhqFzf < Formula
  desc "Interactive ghq repository picker with fzf"
  homepage "https://github.com/masaki39/ghq-fzf"
  url "https://github.com/masaki39/ghq-fzf/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5a93cb37db57aaba5f29a9bcc9f1ac9c8d36a4dfdb46429da49dfdfbe1f9c994"

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
      Run once to enable shell integration:
        ghq-fzf install
    EOS
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ghq-fzf --help 2>&1")
  end
end
