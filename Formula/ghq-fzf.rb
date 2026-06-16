class GhqFzf < Formula
  desc "Interactive ghq repository picker with fzf"
  homepage "https://github.com/masaki39/ghq-fzf"
  url "https://github.com/masaki39/ghq-fzf/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "30b5ff46974a3d4b45f2cc7ed9ca3e56890aa62d70e4aacacbfdc1dd104459f8"

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
