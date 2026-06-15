class GhqFzf < Formula
  desc "Interactive ghq repository picker with fzf"
  homepage "https://github.com/masaki39/ghq-fzf"
  url "https://github.com/masaki39/ghq-fzf/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "bdc32a43c9033c7076ae31f714fab73ab638e45da5f225b20b69d5fd607cb371"

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
