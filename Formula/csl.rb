class Csl < Formula
  desc "Interactive Zotero CSL style selector with clipboard integration"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "65dd315b488a05a0a342e059da1fb1e00f8dbfc55bdcb61bc95aa69f0fa730bf"

  depends_on "jq"
  depends_on "fzf"

  def install
    bin.install "bin/csl"
  end

  test do
    assert_match "csl", shell_output("#{bin}/csl --help 2>&1 || true")
  end
end
