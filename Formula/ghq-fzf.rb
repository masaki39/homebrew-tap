class GhqFzf < Formula
  desc "Interactive ghq repository picker with fzf"
  homepage "https://github.com/masaki39/ghq-fzf"
  url "https://github.com/masaki39/ghq-fzf/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "3c3683cfd7b6005c58c2660c8c229f896ff0abff6a6f6c2b01d6b3cdde6f0a32"

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
