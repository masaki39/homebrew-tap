class Csl < Formula
  desc "Interactive Zotero CSL style selector with clipboard integration"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "3d44b7600510f1df1822b0682ac16797651b7b56c5c2ea8913c70bec367b5340"

  depends_on "jq"
  depends_on "fzf"

  def install
    bin.install "bin/csl"
  end

  test do
    assert_match "csl", shell_output("#{bin}/csl --help 2>&1 || true")
  end
end
