class Csl < Formula
  desc "Interactive Zotero CSL style selector with clipboard integration"
  homepage "https://github.com/masaki39/homebrew-tools"
  url "https://github.com/masaki39/homebrew-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "716ffba7228db3ffbb11014e16d8adb2335ff6aa1888e420097e6acd7bb390c9"

  depends_on "jq"
  depends_on "fzf"

  def install
    bin.install "bin/csl"
  end

  test do
    assert_match "csl", shell_output("#{bin}/csl --help 2>&1 || true")
  end
end
