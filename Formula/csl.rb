class Csl < Formula
  desc "Interactive Zotero CSL style selector with clipboard integration"
  homepage "https://github.com/masaki39/homebrew-tap"
  url "https://github.com/masaki39/homebrew-tap/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "18a0331e7a70b7366ae4af6976afa5a20e5d55a4ed11a8248d0e27aaa3dccaa1"

  depends_on "jq"
  depends_on "fzf"

  def install
    bin.install "bin/csl"
  end

  test do
    assert_match "csl", shell_output("#{bin}/csl --help 2>&1 || true")
  end
end
